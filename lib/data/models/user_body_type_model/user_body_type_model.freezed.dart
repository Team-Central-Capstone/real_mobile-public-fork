// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_body_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBodyTypeModel _$UserBodyTypeModelFromJson(Map<String, dynamic> json) {
  return _UserBodyTypeModel.fromJson(json);
}

/// @nodoc
class _$UserBodyTypeModelTearOff {
  const _$UserBodyTypeModelTearOff();

  _UserBodyTypeModel call(
      {@JsonKey(name: 'Name') String? name, @JsonKey(name: 'Id') int? id}) {
    return _UserBodyTypeModel(
      name: name,
      id: id,
    );
  }

  UserBodyTypeModel fromJson(Map<String, Object?> json) {
    return UserBodyTypeModel.fromJson(json);
  }
}

/// @nodoc
const $UserBodyTypeModel = _$UserBodyTypeModelTearOff();

/// @nodoc
mixin _$UserBodyTypeModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBodyTypeModelCopyWith<UserBodyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBodyTypeModelCopyWith<$Res> {
  factory $UserBodyTypeModelCopyWith(
          UserBodyTypeModel value, $Res Function(UserBodyTypeModel) then) =
      _$UserBodyTypeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Name') String? name, @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class _$UserBodyTypeModelCopyWithImpl<$Res>
    implements $UserBodyTypeModelCopyWith<$Res> {
  _$UserBodyTypeModelCopyWithImpl(this._value, this._then);

  final UserBodyTypeModel _value;
  // ignore: unused_field
  final $Res Function(UserBodyTypeModel) _then;

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
abstract class _$UserBodyTypeModelCopyWith<$Res>
    implements $UserBodyTypeModelCopyWith<$Res> {
  factory _$UserBodyTypeModelCopyWith(
          _UserBodyTypeModel value, $Res Function(_UserBodyTypeModel) then) =
      __$UserBodyTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Name') String? name, @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class __$UserBodyTypeModelCopyWithImpl<$Res>
    extends _$UserBodyTypeModelCopyWithImpl<$Res>
    implements _$UserBodyTypeModelCopyWith<$Res> {
  __$UserBodyTypeModelCopyWithImpl(
      _UserBodyTypeModel _value, $Res Function(_UserBodyTypeModel) _then)
      : super(_value, (v) => _then(v as _UserBodyTypeModel));

  @override
  _UserBodyTypeModel get _value => super._value as _UserBodyTypeModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_UserBodyTypeModel(
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
class _$_UserBodyTypeModel implements _UserBodyTypeModel {
  _$_UserBodyTypeModel(
      {@JsonKey(name: 'Name') this.name, @JsonKey(name: 'Id') this.id});

  factory _$_UserBodyTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserBodyTypeModelFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Id')
  final int? id;

  @override
  String toString() {
    return 'UserBodyTypeModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserBodyTypeModel &&
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
  _$UserBodyTypeModelCopyWith<_UserBodyTypeModel> get copyWith =>
      __$UserBodyTypeModelCopyWithImpl<_UserBodyTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBodyTypeModelToJson(this);
  }
}

abstract class _UserBodyTypeModel implements UserBodyTypeModel {
  factory _UserBodyTypeModel(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Id') int? id}) = _$_UserBodyTypeModel;

  factory _UserBodyTypeModel.fromJson(Map<String, dynamic> json) =
      _$_UserBodyTypeModel.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$UserBodyTypeModelCopyWith<_UserBodyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
