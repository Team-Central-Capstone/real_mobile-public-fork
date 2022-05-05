// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'Active')
          bool? active,
      @JsonKey(name: 'RegisteredTimestamp')
          String? registeredTimestamp,
      @JsonKey(name: 'LastLoginTimestamp')
          String? lastLoginTimestamp,
      @JsonKey(name: 'ProfileLastUpdatedTimestamp')
          String? profileLastUpdatedTimestamp,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'DisplayName')
          String? displayName,
      @JsonKey(name: 'Birthdate')
          DateTime? birthdate,
      @JsonKey(name: 'Zodiac')
          String? zodiac,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserGender')
          dynamic userGender,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          dynamic userBodyType,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          dynamic profileIntro,
      @JsonKey(name: 'GendersAttractedTo')
          List<dynamic>? gendersAttractedTo,
      @JsonKey(name: 'CurrentLocation')
          dynamic currentLocation,
      @JsonKey(name: 'Locations')
          dynamic locations,
      @JsonKey(name: 'UserSurveyResponses')
          List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'UserImages')
          List<dynamic>? userImages,
      @JsonKey(name: 'Id')
          int? id}) {
    return _User(
      firebaseUserId: firebaseUserId,
      email: email,
      active: active,
      registeredTimestamp: registeredTimestamp,
      lastLoginTimestamp: lastLoginTimestamp,
      profileLastUpdatedTimestamp: profileLastUpdatedTimestamp,
      firstName: firstName,
      preferredName: preferredName,
      lastName: lastName,
      displayName: displayName,
      birthdate: birthdate,
      zodiac: zodiac,
      userGenderId: userGenderId,
      userGender: userGender,
      userBodyTypeId: userBodyTypeId,
      userBodyType: userBodyType,
      heightInches: heightInches,
      profileIntro: profileIntro,
      gendersAttractedTo: gendersAttractedTo,
      currentLocation: currentLocation,
      locations: locations,
      userSurveyResponses: userSurveyResponses,
      userImages: userImages,
      id: id,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @JsonKey(name: 'FirebaseUserId')
  String? get firebaseUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'Active')
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'RegisteredTimestamp')
  String? get registeredTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastLoginTimestamp')
  String? get lastLoginTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProfileLastUpdatedTimestamp')
  String? get profileLastUpdatedTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PreferredName')
  String? get preferredName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DisplayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Birthdate')
  DateTime? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Zodiac')
  String? get zodiac => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserGenderId')
  int? get userGenderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserGender')
  dynamic get userGender => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserBodyTypeId')
  int? get userBodyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserBodyType')
  dynamic get userBodyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'HeightInches')
  int? get heightInches => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProfileIntro')
  dynamic get profileIntro => throw _privateConstructorUsedError;
  @JsonKey(name: 'GendersAttractedTo')
  List<dynamic>? get gendersAttractedTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'CurrentLocation')
  dynamic get currentLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'Locations')
  dynamic get locations => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserSurveyResponses')
  List<dynamic>? get userSurveyResponses => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserImages')
  List<dynamic>? get userImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'Active')
          bool? active,
      @JsonKey(name: 'RegisteredTimestamp')
          String? registeredTimestamp,
      @JsonKey(name: 'LastLoginTimestamp')
          String? lastLoginTimestamp,
      @JsonKey(name: 'ProfileLastUpdatedTimestamp')
          String? profileLastUpdatedTimestamp,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'DisplayName')
          String? displayName,
      @JsonKey(name: 'Birthdate')
          DateTime? birthdate,
      @JsonKey(name: 'Zodiac')
          String? zodiac,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserGender')
          dynamic userGender,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          dynamic userBodyType,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          dynamic profileIntro,
      @JsonKey(name: 'GendersAttractedTo')
          List<dynamic>? gendersAttractedTo,
      @JsonKey(name: 'CurrentLocation')
          dynamic currentLocation,
      @JsonKey(name: 'Locations')
          dynamic locations,
      @JsonKey(name: 'UserSurveyResponses')
          List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'UserImages')
          List<dynamic>? userImages,
      @JsonKey(name: 'Id')
          int? id});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? firebaseUserId = freezed,
    Object? email = freezed,
    Object? active = freezed,
    Object? registeredTimestamp = freezed,
    Object? lastLoginTimestamp = freezed,
    Object? profileLastUpdatedTimestamp = freezed,
    Object? firstName = freezed,
    Object? preferredName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
    Object? birthdate = freezed,
    Object? zodiac = freezed,
    Object? userGenderId = freezed,
    Object? userGender = freezed,
    Object? userBodyTypeId = freezed,
    Object? userBodyType = freezed,
    Object? heightInches = freezed,
    Object? profileIntro = freezed,
    Object? gendersAttractedTo = freezed,
    Object? currentLocation = freezed,
    Object? locations = freezed,
    Object? userSurveyResponses = freezed,
    Object? userImages = freezed,
    Object? id = freezed,
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
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      registeredTimestamp: registeredTimestamp == freezed
          ? _value.registeredTimestamp
          : registeredTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginTimestamp: lastLoginTimestamp == freezed
          ? _value.lastLoginTimestamp
          : lastLoginTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      profileLastUpdatedTimestamp: profileLastUpdatedTimestamp == freezed
          ? _value.profileLastUpdatedTimestamp
          : profileLastUpdatedTimestamp // ignore: cast_nullable_to_non_nullable
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
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zodiac: zodiac == freezed
          ? _value.zodiac
          : zodiac // ignore: cast_nullable_to_non_nullable
              as String?,
      userGenderId: userGenderId == freezed
          ? _value.userGenderId
          : userGenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      userGender: userGender == freezed
          ? _value.userGender
          : userGender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userBodyTypeId: userBodyTypeId == freezed
          ? _value.userBodyTypeId
          : userBodyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userBodyType: userBodyType == freezed
          ? _value.userBodyType
          : userBodyType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      heightInches: heightInches == freezed
          ? _value.heightInches
          : heightInches // ignore: cast_nullable_to_non_nullable
              as int?,
      profileIntro: profileIntro == freezed
          ? _value.profileIntro
          : profileIntro // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gendersAttractedTo: gendersAttractedTo == freezed
          ? _value.gendersAttractedTo
          : gendersAttractedTo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userSurveyResponses: userSurveyResponses == freezed
          ? _value.userSurveyResponses
          : userSurveyResponses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      userImages: userImages == freezed
          ? _value.userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'Active')
          bool? active,
      @JsonKey(name: 'RegisteredTimestamp')
          String? registeredTimestamp,
      @JsonKey(name: 'LastLoginTimestamp')
          String? lastLoginTimestamp,
      @JsonKey(name: 'ProfileLastUpdatedTimestamp')
          String? profileLastUpdatedTimestamp,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'DisplayName')
          String? displayName,
      @JsonKey(name: 'Birthdate')
          DateTime? birthdate,
      @JsonKey(name: 'Zodiac')
          String? zodiac,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserGender')
          dynamic userGender,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          dynamic userBodyType,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          dynamic profileIntro,
      @JsonKey(name: 'GendersAttractedTo')
          List<dynamic>? gendersAttractedTo,
      @JsonKey(name: 'CurrentLocation')
          dynamic currentLocation,
      @JsonKey(name: 'Locations')
          dynamic locations,
      @JsonKey(name: 'UserSurveyResponses')
          List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'UserImages')
          List<dynamic>? userImages,
      @JsonKey(name: 'Id')
          int? id});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? firebaseUserId = freezed,
    Object? email = freezed,
    Object? active = freezed,
    Object? registeredTimestamp = freezed,
    Object? lastLoginTimestamp = freezed,
    Object? profileLastUpdatedTimestamp = freezed,
    Object? firstName = freezed,
    Object? preferredName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
    Object? birthdate = freezed,
    Object? zodiac = freezed,
    Object? userGenderId = freezed,
    Object? userGender = freezed,
    Object? userBodyTypeId = freezed,
    Object? userBodyType = freezed,
    Object? heightInches = freezed,
    Object? profileIntro = freezed,
    Object? gendersAttractedTo = freezed,
    Object? currentLocation = freezed,
    Object? locations = freezed,
    Object? userSurveyResponses = freezed,
    Object? userImages = freezed,
    Object? id = freezed,
  }) {
    return _then(_User(
      firebaseUserId: firebaseUserId == freezed
          ? _value.firebaseUserId
          : firebaseUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      registeredTimestamp: registeredTimestamp == freezed
          ? _value.registeredTimestamp
          : registeredTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginTimestamp: lastLoginTimestamp == freezed
          ? _value.lastLoginTimestamp
          : lastLoginTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      profileLastUpdatedTimestamp: profileLastUpdatedTimestamp == freezed
          ? _value.profileLastUpdatedTimestamp
          : profileLastUpdatedTimestamp // ignore: cast_nullable_to_non_nullable
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
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zodiac: zodiac == freezed
          ? _value.zodiac
          : zodiac // ignore: cast_nullable_to_non_nullable
              as String?,
      userGenderId: userGenderId == freezed
          ? _value.userGenderId
          : userGenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      userGender: userGender == freezed
          ? _value.userGender
          : userGender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userBodyTypeId: userBodyTypeId == freezed
          ? _value.userBodyTypeId
          : userBodyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userBodyType: userBodyType == freezed
          ? _value.userBodyType
          : userBodyType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      heightInches: heightInches == freezed
          ? _value.heightInches
          : heightInches // ignore: cast_nullable_to_non_nullable
              as int?,
      profileIntro: profileIntro == freezed
          ? _value.profileIntro
          : profileIntro // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gendersAttractedTo: gendersAttractedTo == freezed
          ? _value.gendersAttractedTo
          : gendersAttractedTo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userSurveyResponses: userSurveyResponses == freezed
          ? _value.userSurveyResponses
          : userSurveyResponses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      userImages: userImages == freezed
          ? _value.userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {@JsonKey(name: 'FirebaseUserId')
          this.firebaseUserId,
      @JsonKey(name: 'Email')
          this.email,
      @JsonKey(name: 'Active')
          this.active,
      @JsonKey(name: 'RegisteredTimestamp')
          this.registeredTimestamp,
      @JsonKey(name: 'LastLoginTimestamp')
          this.lastLoginTimestamp,
      @JsonKey(name: 'ProfileLastUpdatedTimestamp')
          this.profileLastUpdatedTimestamp,
      @JsonKey(name: 'FirstName')
          this.firstName,
      @JsonKey(name: 'PreferredName')
          this.preferredName,
      @JsonKey(name: 'LastName')
          this.lastName,
      @JsonKey(name: 'DisplayName')
          this.displayName,
      @JsonKey(name: 'Birthdate')
          this.birthdate,
      @JsonKey(name: 'Zodiac')
          this.zodiac,
      @JsonKey(name: 'UserGenderId')
          this.userGenderId,
      @JsonKey(name: 'UserGender')
          this.userGender,
      @JsonKey(name: 'UserBodyTypeId')
          this.userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          this.userBodyType,
      @JsonKey(name: 'HeightInches')
          this.heightInches,
      @JsonKey(name: 'ProfileIntro')
          this.profileIntro,
      @JsonKey(name: 'GendersAttractedTo')
          this.gendersAttractedTo,
      @JsonKey(name: 'CurrentLocation')
          this.currentLocation,
      @JsonKey(name: 'Locations')
          this.locations,
      @JsonKey(name: 'UserSurveyResponses')
          this.userSurveyResponses,
      @JsonKey(name: 'UserImages')
          this.userImages,
      @JsonKey(name: 'Id')
          this.id});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'FirebaseUserId')
  final String? firebaseUserId;
  @override
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @JsonKey(name: 'Active')
  final bool? active;
  @override
  @JsonKey(name: 'RegisteredTimestamp')
  final String? registeredTimestamp;
  @override
  @JsonKey(name: 'LastLoginTimestamp')
  final String? lastLoginTimestamp;
  @override
  @JsonKey(name: 'ProfileLastUpdatedTimestamp')
  final String? profileLastUpdatedTimestamp;
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
  @JsonKey(name: 'DisplayName')
  final String? displayName;
  @override
  @JsonKey(name: 'Birthdate')
  final DateTime? birthdate;
  @override
  @JsonKey(name: 'Zodiac')
  final String? zodiac;
  @override
  @JsonKey(name: 'UserGenderId')
  final int? userGenderId;
  @override
  @JsonKey(name: 'UserGender')
  final dynamic userGender;
  @override
  @JsonKey(name: 'UserBodyTypeId')
  final int? userBodyTypeId;
  @override
  @JsonKey(name: 'UserBodyType')
  final dynamic userBodyType;
  @override
  @JsonKey(name: 'HeightInches')
  final int? heightInches;
  @override
  @JsonKey(name: 'ProfileIntro')
  final dynamic profileIntro;
  @override
  @JsonKey(name: 'GendersAttractedTo')
  final List<dynamic>? gendersAttractedTo;
  @override
  @JsonKey(name: 'CurrentLocation')
  final dynamic currentLocation;
  @override
  @JsonKey(name: 'Locations')
  final dynamic locations;
  @override
  @JsonKey(name: 'UserSurveyResponses')
  final List<dynamic>? userSurveyResponses;
  @override
  @JsonKey(name: 'UserImages')
  final List<dynamic>? userImages;
  @override
  @JsonKey(name: 'Id')
  final int? id;

  @override
  String toString() {
    return 'User(firebaseUserId: $firebaseUserId, email: $email, active: $active, registeredTimestamp: $registeredTimestamp, lastLoginTimestamp: $lastLoginTimestamp, profileLastUpdatedTimestamp: $profileLastUpdatedTimestamp, firstName: $firstName, preferredName: $preferredName, lastName: $lastName, displayName: $displayName, birthdate: $birthdate, zodiac: $zodiac, userGenderId: $userGenderId, userGender: $userGender, userBodyTypeId: $userBodyTypeId, userBodyType: $userBodyType, heightInches: $heightInches, profileIntro: $profileIntro, gendersAttractedTo: $gendersAttractedTo, currentLocation: $currentLocation, locations: $locations, userSurveyResponses: $userSurveyResponses, userImages: $userImages, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality()
                .equals(other.firebaseUserId, firebaseUserId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.registeredTimestamp, registeredTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.lastLoginTimestamp, lastLoginTimestamp) &&
            const DeepCollectionEquality().equals(
                other.profileLastUpdatedTimestamp,
                profileLastUpdatedTimestamp) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality()
                .equals(other.preferredName, preferredName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality().equals(other.zodiac, zodiac) &&
            const DeepCollectionEquality()
                .equals(other.userGenderId, userGenderId) &&
            const DeepCollectionEquality()
                .equals(other.userGender, userGender) &&
            const DeepCollectionEquality()
                .equals(other.userBodyTypeId, userBodyTypeId) &&
            const DeepCollectionEquality()
                .equals(other.userBodyType, userBodyType) &&
            const DeepCollectionEquality()
                .equals(other.heightInches, heightInches) &&
            const DeepCollectionEquality()
                .equals(other.profileIntro, profileIntro) &&
            const DeepCollectionEquality()
                .equals(other.gendersAttractedTo, gendersAttractedTo) &&
            const DeepCollectionEquality()
                .equals(other.currentLocation, currentLocation) &&
            const DeepCollectionEquality().equals(other.locations, locations) &&
            const DeepCollectionEquality()
                .equals(other.userSurveyResponses, userSurveyResponses) &&
            const DeepCollectionEquality()
                .equals(other.userImages, userImages) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(firebaseUserId),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(registeredTimestamp),
        const DeepCollectionEquality().hash(lastLoginTimestamp),
        const DeepCollectionEquality().hash(profileLastUpdatedTimestamp),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(preferredName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(displayName),
        const DeepCollectionEquality().hash(birthdate),
        const DeepCollectionEquality().hash(zodiac),
        const DeepCollectionEquality().hash(userGenderId),
        const DeepCollectionEquality().hash(userGender),
        const DeepCollectionEquality().hash(userBodyTypeId),
        const DeepCollectionEquality().hash(userBodyType),
        const DeepCollectionEquality().hash(heightInches),
        const DeepCollectionEquality().hash(profileIntro),
        const DeepCollectionEquality().hash(gendersAttractedTo),
        const DeepCollectionEquality().hash(currentLocation),
        const DeepCollectionEquality().hash(locations),
        const DeepCollectionEquality().hash(userSurveyResponses),
        const DeepCollectionEquality().hash(userImages),
        const DeepCollectionEquality().hash(id)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: 'FirebaseUserId')
          String? firebaseUserId,
      @JsonKey(name: 'Email')
          String? email,
      @JsonKey(name: 'Active')
          bool? active,
      @JsonKey(name: 'RegisteredTimestamp')
          String? registeredTimestamp,
      @JsonKey(name: 'LastLoginTimestamp')
          String? lastLoginTimestamp,
      @JsonKey(name: 'ProfileLastUpdatedTimestamp')
          String? profileLastUpdatedTimestamp,
      @JsonKey(name: 'FirstName')
          String? firstName,
      @JsonKey(name: 'PreferredName')
          String? preferredName,
      @JsonKey(name: 'LastName')
          String? lastName,
      @JsonKey(name: 'DisplayName')
          String? displayName,
      @JsonKey(name: 'Birthdate')
          DateTime? birthdate,
      @JsonKey(name: 'Zodiac')
          String? zodiac,
      @JsonKey(name: 'UserGenderId')
          int? userGenderId,
      @JsonKey(name: 'UserGender')
          dynamic userGender,
      @JsonKey(name: 'UserBodyTypeId')
          int? userBodyTypeId,
      @JsonKey(name: 'UserBodyType')
          dynamic userBodyType,
      @JsonKey(name: 'HeightInches')
          int? heightInches,
      @JsonKey(name: 'ProfileIntro')
          dynamic profileIntro,
      @JsonKey(name: 'GendersAttractedTo')
          List<dynamic>? gendersAttractedTo,
      @JsonKey(name: 'CurrentLocation')
          dynamic currentLocation,
      @JsonKey(name: 'Locations')
          dynamic locations,
      @JsonKey(name: 'UserSurveyResponses')
          List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'UserImages')
          List<dynamic>? userImages,
      @JsonKey(name: 'Id')
          int? id}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'FirebaseUserId')
  String? get firebaseUserId;
  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(name: 'Active')
  bool? get active;
  @override
  @JsonKey(name: 'RegisteredTimestamp')
  String? get registeredTimestamp;
  @override
  @JsonKey(name: 'LastLoginTimestamp')
  String? get lastLoginTimestamp;
  @override
  @JsonKey(name: 'ProfileLastUpdatedTimestamp')
  String? get profileLastUpdatedTimestamp;
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
  @JsonKey(name: 'DisplayName')
  String? get displayName;
  @override
  @JsonKey(name: 'Birthdate')
  DateTime? get birthdate;
  @override
  @JsonKey(name: 'Zodiac')
  String? get zodiac;
  @override
  @JsonKey(name: 'UserGenderId')
  int? get userGenderId;
  @override
  @JsonKey(name: 'UserGender')
  dynamic get userGender;
  @override
  @JsonKey(name: 'UserBodyTypeId')
  int? get userBodyTypeId;
  @override
  @JsonKey(name: 'UserBodyType')
  dynamic get userBodyType;
  @override
  @JsonKey(name: 'HeightInches')
  int? get heightInches;
  @override
  @JsonKey(name: 'ProfileIntro')
  dynamic get profileIntro;
  @override
  @JsonKey(name: 'GendersAttractedTo')
  List<dynamic>? get gendersAttractedTo;
  @override
  @JsonKey(name: 'CurrentLocation')
  dynamic get currentLocation;
  @override
  @JsonKey(name: 'Locations')
  dynamic get locations;
  @override
  @JsonKey(name: 'UserSurveyResponses')
  List<dynamic>? get userSurveyResponses;
  @override
  @JsonKey(name: 'UserImages')
  List<dynamic>? get userImages;
  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
