import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:track_me/core/constants/app_constants.dart';

part 'location_data.freezed.dart';
part 'location_data.g.dart';

@freezed
@HiveType(typeId: AppConstants.locationDataTypeId, adapterName: 'LocationDataAdapter')
class LocationData with _$LocationData {
  const factory LocationData({
    @HiveField(0) required double previousLat,
    @HiveField(1) required double previousLng,
    @HiveField(2) required double currentLat,
    @HiveField(3) required double currentLng,
    @HiveField(4) required double distance,
    @HiveField(5) required DateTime timestamp,
  }) = _LocationData;

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);
}
