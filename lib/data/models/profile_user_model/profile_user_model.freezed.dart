// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileUserModel _$ProfileUserModelFromJson(Map<String, dynamic> json) {
  return _ProfileUserModel.fromJson(json);
}

/// @nodoc
class _$ProfileUserModelTearOff {
  const _$ProfileUserModelTearOff();

  _ProfileUserModel call(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'Birthdate')
          String? birthdate,
      @JsonKey(name: 'UserGender')
          UserGenderModel? userGender,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          UserBodyTypeModel? userBodyType,
      @JsonKey(name: 'UserAttractedGenderIds')
          List<int>? userAttractedGenderIds,
      @JsonKey(name: 'GendersAttractedTo')
          List<UserGenderModel>? gendersAttractedTo,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          String? profileIntro}) {
    return _ProfileUserModel(
      firebaseUserId: firebaseUserId,
      email: email,
      firstName: firstName,
      preferredName: preferredName,
      lastName: lastName,
      birthdate: birthdate,
      userGender: userGender,
      userGenderId: userGenderId,
      userBodyTypeId: userBodyTypeId,
      userBodyType: userBodyType,
      userAttractedGenderIds: userAttractedGenderIds,
      gendersAttractedTo: gendersAttractedTo,
      heightInches: heightInches,
      profileIntro: profileIntro,
    );
  }

  ProfileUserModel fromJson(Map<String, Object?> json) {
    return ProfileUserModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileUserModel = _$ProfileUserModelTearOff();

/// @nodoc
mixin _$ProfileUserModel {
  @JsonKey(name: 'FirebaseUserId')
  String? get firebaseUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PreferredName')
  String? get preferredName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Birthdate')
  String? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserGender')
  UserGenderModel? get userGender => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserGenderId')
  int? get userGenderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserBodyTypeId')
  int? get userBodyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserBodyType')
  UserBodyTypeModel? get userBodyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserAttractedGenderIds')
  List<int>? get userAttractedGenderIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'GendersAttractedTo')
  List<UserGenderModel>? get gendersAttractedTo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'HeightInches')
  int? get heightInches => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProfileIntro')
  String? get profileIntro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUserModelCopyWith<ProfileUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUserModelCopyWith<$Res> {
  factory $ProfileUserModelCopyWith(
          ProfileUserModel value, $Res Function(ProfileUserModel) then) =
      _$ProfileUserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'Birthdate')
          String? birthdate,
      @JsonKey(name: 'UserGender')
          UserGenderModel? userGender,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          UserBodyTypeModel? userBodyType,
      @JsonKey(name: 'UserAttractedGenderIds')
          List<int>? userAttractedGenderIds,
      @JsonKey(name: 'GendersAttractedTo')
          List<UserGenderModel>? gendersAttractedTo,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          String? profileIntro});

  $UserGenderModelCopyWith<$Res>? get userGender;
  $UserBodyTypeModelCopyWith<$Res>? get userBodyType;
}

/// @nodoc
class _$ProfileUserModelCopyWithImpl<$Res>
    implements $ProfileUserModelCopyWith<$Res> {
  _$ProfileUserModelCopyWithImpl(this._value, this._then);

  final ProfileUserModel _value;
  // ignore: unused_field
  final $Res Function(ProfileUserModel) _then;

  @override
  $Res call({
    Object? firebaseUserId = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? preferredName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? userGender = freezed,
    Object? userGenderId = freezed,
    Object? userBodyTypeId = freezed,
    Object? userBodyType = freezed,
    Object? userAttractedGenderIds = freezed,
    Object? gendersAttractedTo = freezed,
    Object? heightInches = freezed,
    Object? profileIntro = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseUserId: firebaseUserId == freezed
          ? _value.firebaseUserId
          : firebaseUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredName: preferredName == freezed
          ? _value.preferredName
          : preferredName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      userGender: userGender == freezed
          ? _value.userGender
          : userGender // ignore: cast_nullable_to_non_nullable
              as UserGenderModel?,
      userGenderId: userGenderId == freezed
          ? _value.userGenderId
          : userGenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      userBodyTypeId: userBodyTypeId == freezed
          ? _value.userBodyTypeId
          : userBodyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userBodyType: userBodyType == freezed
          ? _value.userBodyType
          : userBodyType // ignore: cast_nullable_to_non_nullable
              as UserBodyTypeModel?,
      userAttractedGenderIds: userAttractedGenderIds == freezed
          ? _value.userAttractedGenderIds
          : userAttractedGenderIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      gendersAttractedTo: gendersAttractedTo == freezed
          ? _value.gendersAttractedTo
          : gendersAttractedTo // ignore: cast_nullable_to_non_nullable
              as List<UserGenderModel>?,
      heightInches: heightInches == freezed
          ? _value.heightInches
          : heightInches // ignore: cast_nullable_to_non_nullable
              as int?,
      profileIntro: profileIntro == freezed
          ? _value.profileIntro
          : profileIntro // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserGenderModelCopyWith<$Res>? get userGender {
    if (_value.userGender == null) {
      return null;
    }

    return $UserGenderModelCopyWith<$Res>(_value.userGender!, (value) {
      return _then(_value.copyWith(userGender: value));
    });
  }

  @override
  $UserBodyTypeModelCopyWith<$Res>? get userBodyType {
    if (_value.userBodyType == null) {
      return null;
    }

    return $UserBodyTypeModelCopyWith<$Res>(_value.userBodyType!, (value) {
      return _then(_value.copyWith(userBodyType: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileUserModelCopyWith<$Res>
    implements $ProfileUserModelCopyWith<$Res> {
  factory _$ProfileUserModelCopyWith(
          _ProfileUserModel value, $Res Function(_ProfileUserModel) then) =
      __$ProfileUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'Birthdate')
          String? birthdate,
      @JsonKey(name: 'UserGender')
          UserGenderModel? userGender,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          UserBodyTypeModel? userBodyType,
      @JsonKey(name: 'UserAttractedGenderIds')
          List<int>? userAttractedGenderIds,
      @JsonKey(name: 'GendersAttractedTo')
          List<UserGenderModel>? gendersAttractedTo,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          String? profileIntro});

  @override
  $UserGenderModelCopyWith<$Res>? get userGender;
  @override
  $UserBodyTypeModelCopyWith<$Res>? get userBodyType;
}

/// @nodoc
class __$ProfileUserModelCopyWithImpl<$Res>
    extends _$ProfileUserModelCopyWithImpl<$Res>
    implements _$ProfileUserModelCopyWith<$Res> {
  __$ProfileUserModelCopyWithImpl(
      _ProfileUserModel _value, $Res Function(_ProfileUserModel) _then)
      : super(_value, (v) => _then(v as _ProfileUserModel));

  @override
  _ProfileUserModel get _value => super._value as _ProfileUserModel;

  @override
  $Res call({
    Object? firebaseUserId = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? preferredName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? userGender = freezed,
    Object? userGenderId = freezed,
    Object? userBodyTypeId = freezed,
    Object? userBodyType = freezed,
    Object? userAttractedGenderIds = freezed,
    Object? gendersAttractedTo = freezed,
    Object? heightInches = freezed,
    Object? profileIntro = freezed,
  }) {
    return _then(_ProfileUserModel(
      firebaseUserId: firebaseUserId == freezed
          ? _value.firebaseUserId
          : firebaseUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredName: preferredName == freezed
          ? _value.preferredName
          : preferredName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      userGender: userGender == freezed
          ? _value.userGender
          : userGender // ignore: cast_nullable_to_non_nullable
              as UserGenderModel?,
      userGenderId: userGenderId == freezed
          ? _value.userGenderId
          : userGenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      userBodyTypeId: userBodyTypeId == freezed
          ? _value.userBodyTypeId
          : userBodyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userBodyType: userBodyType == freezed
          ? _value.userBodyType
          : userBodyType // ignore: cast_nullable_to_non_nullable
              as UserBodyTypeModel?,
      userAttractedGenderIds: userAttractedGenderIds == freezed
          ? _value.userAttractedGenderIds
          : userAttractedGenderIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      gendersAttractedTo: gendersAttractedTo == freezed
          ? _value.gendersAttractedTo
          : gendersAttractedTo // ignore: cast_nullable_to_non_nullable
              as List<UserGenderModel>?,
      heightInches: heightInches == freezed
          ? _value.heightInches
          : heightInches // ignore: cast_nullable_to_non_nullable
              as int?,
      profileIntro: profileIntro == freezed
          ? _value.profileIntro
          : profileIntro // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileUserModel implements _ProfileUserModel {
  _$_ProfileUserModel(
      {@JsonKey(name: 'FirebaseUserId') this.firebaseUserId,
      @JsonKey(name: 'Email') this.email,
      @JsonKey(name: 'FirstName') this.firstName,
      @JsonKey(name: 'PreferredName') this.preferredName,
      @JsonKey(name: 'LastName') this.lastName,
      @JsonKey(name: 'Birthdate') this.birthdate,
      @JsonKey(name: 'UserGender') this.userGender,
      @JsonKey(name: 'UserGenderId') this.userGenderId,
      @JsonKey(name: 'UserBodyTypeId') this.userBodyTypeId,
      @JsonKey(name: 'UserBodyType') this.userBodyType,
      @JsonKey(name: 'UserAttractedGenderIds') this.userAttractedGenderIds,
      @JsonKey(name: 'GendersAttractedTo') this.gendersAttractedTo,
      @JsonKey(name: 'HeightInches') this.heightInches,
      @JsonKey(name: 'ProfileIntro') this.profileIntro});

  factory _$_ProfileUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileUserModelFromJson(json);

  @override
  @JsonKey(name: 'FirebaseUserId')
  final String? firebaseUserId;
  @override
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @override
  @JsonKey(name: 'PreferredName')
  final String? preferredName;
  @override
  @JsonKey(name: 'LastName')
  final String? lastName;
  @override
  @JsonKey(name: 'Birthdate')
  final String? birthdate;
  @override
  @JsonKey(name: 'UserGender')
  final UserGenderModel? userGender;
  @override
  @JsonKey(name: 'UserGenderId')
  final int? userGenderId;
  @override
  @JsonKey(name: 'UserBodyTypeId')
  final int? userBodyTypeId;
  @override
  @JsonKey(name: 'UserBodyType')
  final UserBodyTypeModel? userBodyType;
  @override
  @JsonKey(name: 'UserAttractedGenderIds')
  final List<int>? userAttractedGenderIds;
  @override
  @JsonKey(name: 'GendersAttractedTo')
  final List<UserGenderModel>? gendersAttractedTo;
  @override
  @JsonKey(name: 'HeightInches')
  final int? heightInches;
  @override
  @JsonKey(name: 'ProfileIntro')
  final String? profileIntro;

  @override
  String toString() {
    return 'ProfileUserModel(firebaseUserId: $firebaseUserId, email: $email, firstName: $firstName, preferredName: $preferredName, lastName: $lastName, birthdate: $birthdate, userGender: $userGender, userGenderId: $userGenderId, userBodyTypeId: $userBodyTypeId, userBodyType: $userBodyType, userAttractedGenderIds: $userAttractedGenderIds, gendersAttractedTo: $gendersAttractedTo, heightInches: $heightInches, profileIntro: $profileIntro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileUserModel &&
            const DeepCollectionEquality()
                .equals(other.firebaseUserId, firebaseUserId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality()
                .equals(other.preferredName, preferredName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality()
                .equals(other.userGender, userGender) &&
            const DeepCollectionEquality()
                .equals(other.userGenderId, userGenderId) &&
            const DeepCollectionEquality()
                .equals(other.userBodyTypeId, userBodyTypeId) &&
            const DeepCollectionEquality()
                .equals(other.userBodyType, userBodyType) &&
            const DeepCollectionEquality()
                .equals(other.userAttractedGenderIds, userAttractedGenderIds) &&
            const DeepCollectionEquality()
                .equals(other.gendersAttractedTo, gendersAttractedTo) &&
            const DeepCollectionEquality()
                .equals(other.heightInches, heightInches) &&
            const DeepCollectionEquality()
                .equals(other.profileIntro, profileIntro));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firebaseUserId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(preferredName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(birthdate),
      const DeepCollectionEquality().hash(userGender),
      const DeepCollectionEquality().hash(userGenderId),
      const DeepCollectionEquality().hash(userBodyTypeId),
      const DeepCollectionEquality().hash(userBodyType),
      const DeepCollectionEquality().hash(userAttractedGenderIds),
      const DeepCollectionEquality().hash(gendersAttractedTo),
      const DeepCollectionEquality().hash(heightInches),
      const DeepCollectionEquality().hash(profileIntro));

  @JsonKey(ignore: true)
  @override
  _$ProfileUserModelCopyWith<_ProfileUserModel> get copyWith =>
      __$ProfileUserModelCopyWithImpl<_ProfileUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileUserModelToJson(this);
  }
}

abstract class _ProfileUserModel implements ProfileUserModel {
  factory _ProfileUserModel(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'Birthdate')
          String? birthdate,
      @JsonKey(name: 'UserGender')
          UserGenderModel? userGender,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          UserBodyTypeModel? userBodyType,
      @JsonKey(name: 'UserAttractedGenderIds')
          List<int>? userAttractedGenderIds,
      @JsonKey(name: 'GendersAttractedTo')
          List<UserGenderModel>? gendersAttractedTo,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          String? profileIntro}) = _$_ProfileUserModel;

  factory _ProfileUserModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileUserModel.fromJson;

  @override
  @JsonKey(name: 'FirebaseUserId')
  String? get firebaseUserId;
  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(name: 'FirstName')
  String? get firstName;
  @override
  @JsonKey(name: 'PreferredName')
  String? get preferredName;
  @override
  @JsonKey(name: 'LastName')
  String? get lastName;
  @override
  @JsonKey(name: 'Birthdate')
  String? get birthdate;
  @override
  @JsonKey(name: 'UserGender')
  UserGenderModel? get userGender;
  @override
  @JsonKey(name: 'UserGenderId')
  int? get userGenderId;
  @override
  @JsonKey(name: 'UserBodyTypeId')
  int? get userBodyTypeId;
  @override
  @JsonKey(name: 'UserBodyType')
  UserBodyTypeModel? get userBodyType;
  @override
  @JsonKey(name: 'UserAttractedGenderIds')
  List<int>? get userAttractedGenderIds;
  @override
  @JsonKey(name: 'GendersAttractedTo')
  List<UserGenderModel>? get gendersAttractedTo;
  @override
  @JsonKey(name: 'HeightInches')
  int? get heightInches;
  @override
  @JsonKey(name: 'ProfileIntro')
  String? get profileIntro;
  @override
  @JsonKey(ignore: true)
  _$ProfileUserModelCopyWith<_ProfileUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
