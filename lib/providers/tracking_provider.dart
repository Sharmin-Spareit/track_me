import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:track_me/models/location_data.dart';
import 'package:track_me/providers/location_provider.dart';


part 'tracking_provider.g.dart';

class TrackingState {
  final bool isTracking;
  final Position? lastPosition;
  final double totalDistance;
  final String? startLocation;
  final String? endLocation;

  TrackingState({
    this.isTracking = false,
    this.lastPosition,
    this.totalDistance = 0.0,
    this.startLocation,
    this.endLocation,
  });

  TrackingState copyWith({
    bool? isTracking,
    Position? lastPosition,
    double? totalDistance,
    String? startLocation,
    String? endLocation,
  }) {
    return TrackingState(
      isTracking: isTracking ?? this.isTracking,
      lastPosition: lastPosition ?? this.lastPosition,
      totalDistance: totalDistance ?? this.totalDistance,
      startLocation: startLocation ?? this.startLocation,
      endLocation: endLocation ?? this.endLocation,
    );
  }
}

@riverpod
class TrackingNotifier extends _$TrackingNotifier {
  StreamSubscription<Position>? _positionSubscription;

  @override
  TrackingState build() {
    ref.onDispose(() {
      _positionSubscription?.cancel();
    });
    return TrackingState();
  }

  Future<void> startTracking() async {
    final locationService = ref.read(locationServiceProvider);
    final repository = ref.read(locationRepositoryProvider);
    await repository.clearAllLocations();
    final initialPosition = await locationService.getCurrentPosition();

    final firstLocation = LocationData(
      previousLat: initialPosition.latitude,
      previousLng: initialPosition.longitude,
      currentLat: initialPosition.latitude,
      currentLng: initialPosition.longitude,
      distance: 0.0,
      timestamp: DateTime.now(),
    );
    await repository.saveLocation(firstLocation);

    state = state.copyWith(
      isTracking: true,
      lastPosition: initialPosition,
      totalDistance: 0.0,
      startLocation: '${initialPosition.latitude}, ${initialPosition.longitude}',
    );

    _positionSubscription = locationService.getPositionStream().listen(
      (Position position) async {
        if (state.lastPosition != null) {
          final distance = locationService.calculateDistance(
            state.lastPosition!,
            position,
          );

          final locationData = LocationData(
            previousLat: state.lastPosition!.latitude,
            previousLng: state.lastPosition!.longitude,
            currentLat: position.latitude,
            currentLng: position.longitude,
            distance: distance,
            timestamp: DateTime.now(),
          );
          await repository.saveLocation(locationData);

          state = state.copyWith(
            lastPosition: position,
            totalDistance: state.totalDistance + distance,
          );
        }
      },
    );
  }

  Future<void> stopTracking() async {
    await _positionSubscription?.cancel();
    _positionSubscription = null;

    final repository = ref.read(locationRepositoryProvider);
    final startLoc = repository.getStartLocation();
    final endLoc = repository.getEndLocation();
    final totalDist = repository.getTotalDistance();

    state = state.copyWith(
      isTracking: false,
      totalDistance: totalDist,
      startLocation: startLoc != null
          ? '${startLoc.previousLat}, ${startLoc.previousLng}'
          : null,
      endLocation: endLoc != null
          ? '${endLoc.currentLat}, ${endLoc.currentLng}'
          : null,
    );
  }
}
