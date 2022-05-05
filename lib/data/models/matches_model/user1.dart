import 'package:freezed_annotation/freezed_annotation.dart';

part 'user1.freezed.dart';
part 'user1.g.dart';

@freezed
class User1 with _$User1 {
  factory User1({
    @JsonKey(name: 'FirebaseUserId') String? firebaseUserId,
    @JsonKey(name: 'Email') dynamic email,
    @JsonKey(name: 'Active') bool? active,
    @JsonKey(name: 'RegisteredTimestamp') DateTime? registeredTimestamp,
    @JsonKey(name: 'LastLoginTimestamp') DateTime? lastLoginTimestamp,
    @JsonKey(name: 'ProfileLastUpdatedTimestamp')
        dynamic profileLastUpdatedTimestamp,
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'PreferredName') String? preferredName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'DisplayName') String? displayName,
    @JsonKey(name: 'Birthdate') DateTime? birthdate,
    @JsonKey(name: 'Zodiac') String? zodiac,
    @JsonKey(name: 'UserGenderId') int? userGenderId,
    @JsonKey(name: 'UserGender') dynamic userGender,
    @JsonKey(name: 'UserBodyTypeId') int? userBodyTypeId,
    @JsonKey(name: 'UserBodyType') dynamic userBodyType,
    @JsonKey(name: 'HeightInches') int? heightInches,
    @JsonKey(name: 'ProfileIntro') dynamic profileIntro,
    @JsonKey(name: 'GendersAttractedTo') List<dynamic>? gendersAttractedTo,
    @JsonKey(name: 'CurrentLocation') dynamic currentLocation,
    @JsonKey(name: 'Locations') dynamic locations,
    @JsonKey(name: 'UserSurveyResponses') List<dynamic>? userSurveyResponses,
    @JsonKey(name: 'UserImages') List<dynamic>? userImages,
    @JsonKey(name: 'Id') int? id,
  }) = _User1;

  factory User1.fromJson(Map<String, dynamic> json) => _$User1FromJson(json);
}
