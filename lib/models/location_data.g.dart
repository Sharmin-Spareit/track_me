// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationDataAdapter extends TypeAdapter<LocationData> {
  @override
  final int typeId = 0;

  @override
  LocationData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationData(
      previousLat: fields[0] as double,
      previousLng: fields[1] as double,
      currentLat: fields[2] as double,
      currentLng: fields[3] as double,
      distance: fields[4] as double,
      timestamp: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, LocationData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.previousLat)
      ..writeByte(1)
      ..write(obj.previousLng)
      ..writeByte(2)
      ..write(obj.currentLat)
      ..writeByte(3)
      ..write(obj.currentLng)
      ..writeByte(4)
      ..write(obj.distance)
      ..writeByte(5)
      ..write(obj.timestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDataImpl _$$LocationDataImplFromJson(Map<String, dynamic> json) =>
    _$LocationDataImpl(
      previousLat: (json['previousLat'] as num).toDouble(),
      previousLng: (json['previousLng'] as num).toDouble(),
      currentLat: (json['currentLat'] as num).toDouble(),
      currentLng: (json['currentLng'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$LocationDataImplToJson(_$LocationDataImpl instance) =>
    <String, dynamic>{
      'previousLat': instance.previousLat,
      'previousLng': instance.previousLng,
      'currentLat': instance.currentLat,
      'currentLng': instance.currentLng,
      'distance': instance.distance,
      'timestamp': instance.timestamp.toIso8601String(),
    };
