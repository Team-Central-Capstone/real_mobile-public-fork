// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
class _$LocationModelTearOff {
  const _$LocationModelTearOff();

  _LocationModel call(
      {String? id, String? deviceid, double? latitude, double? longitude}) {
    return _LocationModel(
      id: id,
      deviceid: deviceid,
      latitude: latitude,
      longitude: longitude,
    );
  }

  LocationModel fromJson(Map<String, Object?> json) {
    return LocationModel.fromJson(json);
  }
}

/// @nodoc
const $LocationModel = _$LocationModelTearOff();

/// @nodoc
mixin _$LocationModel {
  String? get id => throw _privateConstructorUsedError;
  String? get deviceid => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call(
      {String? id, String? deviceid, double? latitude, double? longitude});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? deviceid = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceid: deviceid == freezed
          ? _value.deviceid
          : deviceid // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) then) =
      __$LocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id, String? deviceid, double? latitude, double? longitude});
}

/// @nodoc
class __$LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(
      _LocationModel _value, $Res Function(_LocationModel) _then)
      : super(_value, (v) => _then(v as _LocationModel));

  @override
  _LocationModel get _value => super._value as _LocationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? deviceid = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_LocationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceid: deviceid == freezed
          ? _value.deviceid
          : deviceid // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  _$_LocationModel({this.id, this.deviceid, this.latitude, this.longitude});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  final String? id;
  @override
  final String? deviceid;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LocationModel(id: $id, deviceid: $deviceid, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.deviceid, deviceid) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(deviceid),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  factory _LocationModel(
      {String? id,
      String? deviceid,
      double? latitude,
      double? longitude}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  String? get id;
  @override
  String? get deviceid;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
