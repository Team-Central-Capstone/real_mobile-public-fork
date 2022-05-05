// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileImageModel _$ProfileImageModelFromJson(Map<String, dynamic> json) {
  return _ProfileImageModel.fromJson(json);
}

/// @nodoc
class _$ProfileImageModelTearOff {
  const _$ProfileImageModelTearOff();

  _ProfileImageModel call(
      {@JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Base64ImageString') String? base64ImageString,
      @JsonKey(name: 'Image') String? image}) {
    return _ProfileImageModel(
      fileName: fileName,
      contentType: contentType,
      description: description,
      base64ImageString: base64ImageString,
      image: image,
    );
  }

  ProfileImageModel fromJson(Map<String, Object?> json) {
    return ProfileImageModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileImageModel = _$ProfileImageModelTearOff();

/// @nodoc
mixin _$ProfileImageModel {
  @JsonKey(name: 'FileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContentType')
  String? get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Base64ImageString')
  String? get base64ImageString => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageModelCopyWith<ProfileImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageModelCopyWith<$Res> {
  factory $ProfileImageModelCopyWith(
          ProfileImageModel value, $Res Function(ProfileImageModel) then) =
      _$ProfileImageModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Base64ImageString') String? base64ImageString,
      @JsonKey(name: 'Image') String? image});
}

/// @nodoc
class _$ProfileImageModelCopyWithImpl<$Res>
    implements $ProfileImageModelCopyWith<$Res> {
  _$ProfileImageModelCopyWithImpl(this._value, this._then);

  final ProfileImageModel _value;
  // ignore: unused_field
  final $Res Function(ProfileImageModel) _then;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
    Object? base64ImageString = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      base64ImageString: base64ImageString == freezed
          ? _value.base64ImageString
          : base64ImageString // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileImageModelCopyWith<$Res>
    implements $ProfileImageModelCopyWith<$Res> {
  factory _$ProfileImageModelCopyWith(
          _ProfileImageModel value, $Res Function(_ProfileImageModel) then) =
      __$ProfileImageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Base64ImageString') String? base64ImageString,
      @JsonKey(name: 'Image') String? image});
}

/// @nodoc
class __$ProfileImageModelCopyWithImpl<$Res>
    extends _$ProfileImageModelCopyWithImpl<$Res>
    implements _$ProfileImageModelCopyWith<$Res> {
  __$ProfileImageModelCopyWithImpl(
      _ProfileImageModel _value, $Res Function(_ProfileImageModel) _then)
      : super(_value, (v) => _then(v as _ProfileImageModel));

  @override
  _ProfileImageModel get _value => super._value as _ProfileImageModel;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
    Object? base64ImageString = freezed,
    Object? image = freezed,
  }) {
    return _then(_ProfileImageModel(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      base64ImageString: base64ImageString == freezed
          ? _value.base64ImageString
          : base64ImageString // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileImageModel implements _ProfileImageModel {
  _$_ProfileImageModel(
      {@JsonKey(name: 'FileName') this.fileName,
      @JsonKey(name: 'ContentType') this.contentType,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Base64ImageString') this.base64ImageString,
      @JsonKey(name: 'Image') this.image});

  factory _$_ProfileImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileImageModelFromJson(json);

  @override
  @JsonKey(name: 'FileName')
  final String? fileName;
  @override
  @JsonKey(name: 'ContentType')
  final String? contentType;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'Base64ImageString')
  final String? base64ImageString;
  @override
  @JsonKey(name: 'Image')
  final String? image;

  @override
  String toString() {
    return 'ProfileImageModel(fileName: $fileName, contentType: $contentType, description: $description, base64ImageString: $base64ImageString, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileImageModel &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.base64ImageString, base64ImageString) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(contentType),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(base64ImageString),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$ProfileImageModelCopyWith<_ProfileImageModel> get copyWith =>
      __$ProfileImageModelCopyWithImpl<_ProfileImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileImageModelToJson(this);
  }
}

abstract class _ProfileImageModel implements ProfileImageModel {
  factory _ProfileImageModel(
      {@JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Base64ImageString') String? base64ImageString,
      @JsonKey(name: 'Image') String? image}) = _$_ProfileImageModel;

  factory _ProfileImageModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileImageModel.fromJson;

  @override
  @JsonKey(name: 'FileName')
  String? get fileName;
  @override
  @JsonKey(name: 'ContentType')
  String? get contentType;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'Base64ImageString')
  String? get base64ImageString;
  @override
  @JsonKey(name: 'Image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$ProfileImageModelCopyWith<_ProfileImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
