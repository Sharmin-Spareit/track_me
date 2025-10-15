import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:track_me/repositories/location_repository.dart';
import 'package:track_me/services/location_service.dart';


part 'location_provider.g.dart';
@riverpod
LocationService locationService(LocationServiceRef ref) {
  return LocationService();
}

@riverpod
LocationRepository locationRepository(LocationRepositoryRef ref) {
  return LocationRepository();
}
