import 'package:hive/hive.dart';
import 'package:track_me/core/constants/app_constants.dart';
import 'package:track_me/models/location_data.dart';


class LocationRepository {
  late final Box<LocationData> _box;

  LocationRepository() {
    _box = Hive.box<LocationData>(AppConstants.locationBoxName);
  }

  Future<void> saveLocation(LocationData location) async {
    await _box.add(location);
  }

  List<LocationData> getAllLocations() {
    return _box.values.toList();
  }

  Future<void> clearAllLocations() async {
    await _box.clear();
  }

  LocationData? getStartLocation() {
    if (_box.isEmpty) return null;
    return _box.getAt(0);
  }

  LocationData? getEndLocation() {
    if (_box.isEmpty) return null;
    return _box.getAt(_box.length - 1);
  }

  double getTotalDistance() {
    if (_box.isEmpty) return 0.0;
    
    double total = 0.0;
    for (var location in _box.values) {
      total += location.distance;
    }
    return total;
  }

  int getLocationCount() {
    return _box.length;
  }
}
