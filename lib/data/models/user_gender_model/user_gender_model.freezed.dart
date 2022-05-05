// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_gender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGenderModel _$UserGenderModelFromJson(Map<String, dynamic> json) {
  return _UserGenderModel.fromJson(json);
}

/// @nodoc
class _$UserGenderModelTearOff {
  const _$UserGenderModelTearOff();

  _UserGenderModel call(
      {@JsonKey(name: 'Name') String? name, @JsonKey(name: 'Id') int? id}) {
    return _UserGenderModel(
      name: name,
      id: id,
    );
  }

  UserGenderModel fromJson(Map<String, Object?> json) {
    return UserGenderModel.fromJson(json);
  }
}

/// @nodoc
const $UserGenderModel = _$UserGenderModelTearOff();

/// @nodoc
mixin _$UserGenderModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGenderModelCopyWith<UserGenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGenderModelCopyWith<$Res> {
  factory $UserGenderModelCopyWith(
          UserGenderModel value, $Res Function(UserGenderModel) then) =
      _$UserGenderModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Name') String? name, @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class _$UserGenderModelCopyWithImpl<$Res>
    implements $UserGenderModelCopyWith<$Res> {
  _$UserGenderModelCopyWithImpl(this._value, this._then);

  final UserGenderModel _value;
  // ignore: unused_field
  final $Res Function(UserGenderModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserGenderModelCopyWith<$Res>
    implements $UserGenderModelCopyWith<$Res> {
  factory _$UserGenderModelCopyWith(
          _UserGenderModel value, $Res Function(_UserGenderModel) then) =
      __$UserGenderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Name') String? name, @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class __$UserGenderModelCopyWithImpl<$Res>
    extends _$UserGenderModelCopyWithImpl<$Res>
    implements _$UserGenderModelCopyWith<$Res> {
  __$UserGenderModelCopyWithImpl(
      _UserGenderModel _value, $Res Function(_UserGenderModel) _then)
      : super(_value, (v) => _then(v as _UserGenderModel));

  @override
  _UserGenderModel get _value => super._value as _UserGenderModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_UserGenderModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGenderModel implements _UserGenderModel {
  _$_UserGenderModel(
      {@JsonKey(name: 'Name') this.name, @JsonKey(name: 'Id') this.id});

  factory _$_UserGenderModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserGenderModelFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Id')
  final int? id;

  @override
  String toString() {
    return 'UserGenderModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserGenderModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$UserGenderModelCopyWith<_UserGenderModel> get copyWith =>
      __$UserGenderModelCopyWithImpl<_UserGenderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGenderModelToJson(this);
  }
}

abstract class _UserGenderModel implements UserGenderModel {
  factory _UserGenderModel(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Id') int? id}) = _$_UserGenderModel;

  factory _UserGenderModel.fromJson(Map<String, dynamic> json) =
      _$_UserGenderModel.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$UserGenderModelCopyWith<_UserGenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
