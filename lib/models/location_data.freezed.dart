// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  return _LocationData.fromJson(json);
}

/// @nodoc
mixin _$LocationData {
  @HiveField(0)
  double get previousLat => throw _privateConstructorUsedError;
  @HiveField(1)
  double get previousLng => throw _privateConstructorUsedError;
  @HiveField(2)
  double get currentLat => throw _privateConstructorUsedError;
  @HiveField(3)
  double get currentLng => throw _privateConstructorUsedError;
  @HiveField(4)
  double get distance => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDataCopyWith<LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res, LocationData>;
  @useResult
  $Res call(
      {@HiveField(0) double previousLat,
      @HiveField(1) double previousLng,
      @HiveField(2) double currentLat,
      @HiveField(3) double currentLng,
      @HiveField(4) double distance,
      @HiveField(5) DateTime timestamp});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res, $Val extends LocationData>
    implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousLat = null,
    Object? previousLng = null,
    Object? currentLat = null,
    Object? currentLng = null,
    Object? distance = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      previousLat: null == previousLat
          ? _value.previousLat
          : previousLat // ignore: cast_nullable_to_non_nullable
              as double,
      previousLng: null == previousLng
          ? _value.previousLng
          : previousLng // ignore: cast_nullable_to_non_nullable
              as double,
      currentLat: null == currentLat
          ? _value.currentLat
          : currentLat // ignore: cast_nullable_to_non_nullable
              as double,
      currentLng: null == currentLng
          ? _value.currentLng
          : currentLng // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDataImplCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$$LocationDataImplCopyWith(
          _$LocationDataImpl value, $Res Function(_$LocationDataImpl) then) =
      __$$LocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) double previousLat,
      @HiveField(1) double previousLng,
      @HiveField(2) double currentLat,
      @HiveField(3) double currentLng,
      @HiveField(4) double distance,
      @HiveField(5) DateTime timestamp});
}

/// @nodoc
class __$$LocationDataImplCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res, _$LocationDataImpl>
    implements _$$LocationDataImplCopyWith<$Res> {
  __$$LocationDataImplCopyWithImpl(
      _$LocationDataImpl _value, $Res Function(_$LocationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousLat = null,
    Object? previousLng = null,
    Object? currentLat = null,
    Object? currentLng = null,
    Object? distance = null,
    Object? timestamp = null,
  }) {
    return _then(_$LocationDataImpl(
      previousLat: null == previousLat
          ? _value.previousLat
          : previousLat // ignore: cast_nullable_to_non_nullable
              as double,
      previousLng: null == previousLng
          ? _value.previousLng
          : previousLng // ignore: cast_nullable_to_non_nullable
              as double,
      currentLat: null == currentLat
          ? _value.currentLat
          : currentLat // ignore: cast_nullable_to_non_nullable
              as double,
      currentLng: null == currentLng
          ? _value.currentLng
          : currentLng // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDataImpl implements _LocationData {
  const _$LocationDataImpl(
      {@HiveField(0) required this.previousLat,
      @HiveField(1) required this.previousLng,
      @HiveField(2) required this.currentLat,
      @HiveField(3) required this.currentLng,
      @HiveField(4) required this.distance,
      @HiveField(5) required this.timestamp});

  factory _$LocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDataImplFromJson(json);

  @override
  @HiveField(0)
  final double previousLat;
  @override
  @HiveField(1)
  final double previousLng;
  @override
  @HiveField(2)
  final double currentLat;
  @override
  @HiveField(3)
  final double currentLng;
  @override
  @HiveField(4)
  final double distance;
  @override
  @HiveField(5)
  final DateTime timestamp;

  @override
  String toString() {
    return 'LocationData(previousLat: $previousLat, previousLng: $previousLng, currentLat: $currentLat, currentLng: $currentLng, distance: $distance, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataImpl &&
            (identical(other.previousLat, previousLat) ||
                other.previousLat == previousLat) &&
            (identical(other.previousLng, previousLng) ||
                other.previousLng == previousLng) &&
            (identical(other.currentLat, currentLat) ||
                other.currentLat == currentLat) &&
            (identical(other.currentLng, currentLng) ||
                other.currentLng == currentLng) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, previousLat, previousLng,
      currentLat, currentLng, distance, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      __$$LocationDataImplCopyWithImpl<_$LocationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDataImplToJson(
      this,
    );
  }
}

abstract class _LocationData implements LocationData {
  const factory _LocationData(
      {@HiveField(0) required final double previousLat,
      @HiveField(1) required final double previousLng,
      @HiveField(2) required final double currentLat,
      @HiveField(3) required final double currentLng,
      @HiveField(4) required final double distance,
      @HiveField(5) required final DateTime timestamp}) = _$LocationDataImpl;

  factory _LocationData.fromJson(Map<String, dynamic> json) =
      _$LocationDataImpl.fromJson;

  @override
  @HiveField(0)
  double get previousLat;
  @override
  @HiveField(1)
  double get previousLng;
  @override
  @HiveField(2)
  double get currentLat;
  @override
  @HiveField(3)
  double get currentLng;
  @override
  @HiveField(4)
  double get distance;
  @override
  @HiveField(5)
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
