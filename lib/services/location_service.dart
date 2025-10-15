import 'package:geolocator/geolocator.dart';
import 'package:track_me/core/constants/app_constants.dart';
import 'package:track_me/core/exceptions/app_exceptions.dart';
import 'package:track_me/core/utils/permission_helper.dart';


class LocationService {
  Future<Position> getCurrentPosition() async {
    final hasPermission = await PermissionHelper.checkAndRequestPermission();
    
    if (!hasPermission) {
      throw LocationPermissionException(
        'Location permission denied. Please enable location access.',
      );
    }

    try {
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      throw LocationServiceException('Failed to get current location: $e');
    }
  }

  Stream<Position> getPositionStream() {
    final locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: AppConstants.distanceFilter.toInt(),
    );

    return Geolocator.getPositionStream(locationSettings: locationSettings);
  }

  double calculateDistance(Position start, Position end) {
    final distanceInMeters = Geolocator.distanceBetween(
      start.latitude,
      start.longitude,
      end.latitude,
      end.longitude,
    );
    return distanceInMeters / 1000; 
  }
}
