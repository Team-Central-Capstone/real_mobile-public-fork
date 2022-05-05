// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_get_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseGetImage _$ResponseGetImageFromJson(Map<String, dynamic> json) {
  return _ResponseGetImage.fromJson(json);
}

/// @nodoc
class _$ResponseGetImageTearOff {
  const _$ResponseGetImageTearOff();

  _ResponseGetImage call(
      {@JsonKey(name: 'UserId') int? userId,
      @JsonKey(name: 'User') User? user,
      @JsonKey(name: 'IsProfilePhoto') bool? isProfilePhoto,
      @JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') dynamic description,
      @JsonKey(name: 'UploadDate') String? uploadDate,
      @JsonKey(name: 'Image') String? image,
      @JsonKey(name: 'Id') int? id}) {
    return _ResponseGetImage(
      userId: userId,
      user: user,
      isProfilePhoto: isProfilePhoto,
      fileName: fileName,
      contentType: contentType,
      description: description,
      uploadDate: uploadDate,
      image: image,
      id: id,
    );
  }

  ResponseGetImage fromJson(Map<String, Object?> json) {
    return ResponseGetImage.fromJson(json);
  }
}

/// @nodoc
const $ResponseGetImage = _$ResponseGetImageTearOff();

/// @nodoc
mixin _$ResponseGetImage {
  @JsonKey(name: 'UserId')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'User')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsProfilePhoto')
  bool? get isProfilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'FileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContentType')
  String? get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'UploadDate')
  String? get uploadDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetImageCopyWith<ResponseGetImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetImageCopyWith<$Res> {
  factory $ResponseGetImageCopyWith(
          ResponseGetImage value, $Res Function(ResponseGetImage) then) =
      _$ResponseGetImageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'UserId') int? userId,
      @JsonKey(name: 'User') User? user,
      @JsonKey(name: 'IsProfilePhoto') bool? isProfilePhoto,
      @JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') dynamic description,
      @JsonKey(name: 'UploadDate') String? uploadDate,
      @JsonKey(name: 'Image') String? image,
      @JsonKey(name: 'Id') int? id});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ResponseGetImageCopyWithImpl<$Res>
    implements $ResponseGetImageCopyWith<$Res> {
  _$ResponseGetImageCopyWithImpl(this._value, this._then);

  final ResponseGetImage _value;
  // ignore: unused_field
  final $Res Function(ResponseGetImage) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? user = freezed,
    Object? isProfilePhoto = freezed,
    Object? fileName = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
    Object? uploadDate = freezed,
    Object? image = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isProfilePhoto: isProfilePhoto == freezed
          ? _value.isProfilePhoto
          : isProfilePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as dynamic,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseGetImageCopyWith<$Res>
    implements $ResponseGetImageCopyWith<$Res> {
  factory _$ResponseGetImageCopyWith(
          _ResponseGetImage value, $Res Function(_ResponseGetImage) then) =
      __$ResponseGetImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'UserId') int? userId,
      @JsonKey(name: 'User') User? user,
      @JsonKey(name: 'IsProfilePhoto') bool? isProfilePhoto,
      @JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') dynamic description,
      @JsonKey(name: 'UploadDate') String? uploadDate,
      @JsonKey(name: 'Image') String? image,
      @JsonKey(name: 'Id') int? id});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$ResponseGetImageCopyWithImpl<$Res>
    extends _$ResponseGetImageCopyWithImpl<$Res>
    implements _$ResponseGetImageCopyWith<$Res> {
  __$ResponseGetImageCopyWithImpl(
      _ResponseGetImage _value, $Res Function(_ResponseGetImage) _then)
      : super(_value, (v) => _then(v as _ResponseGetImage));

  @override
  _ResponseGetImage get _value => super._value as _ResponseGetImage;

  @override
  $Res call({
    Object? userId = freezed,
    Object? user = freezed,
    Object? isProfilePhoto = freezed,
    Object? fileName = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
    Object? uploadDate = freezed,
    Object? image = freezed,
    Object? id = freezed,
  }) {
    return _then(_ResponseGetImage(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isProfilePhoto: isProfilePhoto == freezed
          ? _value.isProfilePhoto
          : isProfilePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as dynamic,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_ResponseGetImage implements _ResponseGetImage {
  _$_ResponseGetImage(
      {@JsonKey(name: 'UserId') this.userId,
      @JsonKey(name: 'User') this.user,
      @JsonKey(name: 'IsProfilePhoto') this.isProfilePhoto,
      @JsonKey(name: 'FileName') this.fileName,
      @JsonKey(name: 'ContentType') this.contentType,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'UploadDate') this.uploadDate,
      @JsonKey(name: 'Image') this.image,
      @JsonKey(name: 'Id') this.id});

  factory _$_ResponseGetImage.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseGetImageFromJson(json);

  @override
  @JsonKey(name: 'UserId')
  final int? userId;
  @override
  @JsonKey(name: 'User')
  final User? user;
  @override
  @JsonKey(name: 'IsProfilePhoto')
  final bool? isProfilePhoto;
  @override
  @JsonKey(name: 'FileName')
  final String? fileName;
  @override
  @JsonKey(name: 'ContentType')
  final String? contentType;
  @override
  @JsonKey(name: 'Description')
  final dynamic description;
  @override
  @JsonKey(name: 'UploadDate')
  final String? uploadDate;
  @override
  @JsonKey(name: 'Image')
  final String? image;
  @override
  @JsonKey(name: 'Id')
  final int? id;

  @override
  String toString() {
    return 'ResponseGetImage(userId: $userId, user: $user, isProfilePhoto: $isProfilePhoto, fileName: $fileName, contentType: $contentType, description: $description, uploadDate: $uploadDate, image: $image, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseGetImage &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.isProfilePhoto, isProfilePhoto) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.uploadDate, uploadDate) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isProfilePhoto),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(contentType),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(uploadDate),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ResponseGetImageCopyWith<_ResponseGetImage> get copyWith =>
      __$ResponseGetImageCopyWithImpl<_ResponseGetImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseGetImageToJson(this);
  }
}

abstract class _ResponseGetImage implements ResponseGetImage {
  factory _ResponseGetImage(
      {@JsonKey(name: 'UserId') int? userId,
      @JsonKey(name: 'User') User? user,
      @JsonKey(name: 'IsProfilePhoto') bool? isProfilePhoto,
      @JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'ContentType') String? contentType,
      @JsonKey(name: 'Description') dynamic description,
      @JsonKey(name: 'UploadDate') String? uploadDate,
      @JsonKey(name: 'Image') String? image,
      @JsonKey(name: 'Id') int? id}) = _$_ResponseGetImage;

  factory _ResponseGetImage.fromJson(Map<String, dynamic> json) =
      _$_ResponseGetImage.fromJson;

  @override
  @JsonKey(name: 'UserId')
  int? get userId;
  @override
  @JsonKey(name: 'User')
  User? get user;
  @override
  @JsonKey(name: 'IsProfilePhoto')
  bool? get isProfilePhoto;
  @override
  @JsonKey(name: 'FileName')
  String? get fileName;
  @override
  @JsonKey(name: 'ContentType')
  String? get contentType;
  @override
  @JsonKey(name: 'Description')
  dynamic get description;
  @override
  @JsonKey(name: 'UploadDate')
  String? get uploadDate;
  @override
  @JsonKey(name: 'Image')
  String? get image;
  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$ResponseGetImageCopyWith<_ResponseGetImage> get copyWith =>
      throw _privateConstructorUsedError;
}
