// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyResponse _$SurveyResponseFromJson(Map<String, dynamic> json) {
  return _SurveyResponse.fromJson(json);
}

/// @nodoc
class _$SurveyResponseTearOff {
  const _$SurveyResponseTearOff();

  _SurveyResponse call(
      {@JsonKey(name: 'SurveyAnswerResponse')
          String? surveyAnswerResponse,
      @JsonKey(name: 'AnswerIds')
          List<int>? answerIds,
      @JsonKey(name: 'UserSurveyResponseWeight')
          int? userSurveyResponseWeight}) {
    return _SurveyResponse(
      surveyAnswerResponse: surveyAnswerResponse,
      answerIds: answerIds,
      userSurveyResponseWeight: userSurveyResponseWeight,
    );
  }

  SurveyResponse fromJson(Map<String, Object?> json) {
    return SurveyResponse.fromJson(json);
  }
}

/// @nodoc
const $SurveyResponse = _$SurveyResponseTearOff();

/// @nodoc
mixin _$SurveyResponse {
  @JsonKey(name: 'SurveyAnswerResponse')
  String? get surveyAnswerResponse => throw _privateConstructorUsedError;
  @JsonKey(name: 'AnswerIds')
  List<int>? get answerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserSurveyResponseWeight')
  int? get userSurveyResponseWeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyResponseCopyWith<SurveyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResponseCopyWith<$Res> {
  factory $SurveyResponseCopyWith(
          SurveyResponse value, $Res Function(SurveyResponse) then) =
      _$SurveyResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'SurveyAnswerResponse')
          String? surveyAnswerResponse,
      @JsonKey(name: 'AnswerIds')
          List<int>? answerIds,
      @JsonKey(name: 'UserSurveyResponseWeight')
          int? userSurveyResponseWeight});
}

/// @nodoc
class _$SurveyResponseCopyWithImpl<$Res>
    implements $SurveyResponseCopyWith<$Res> {
  _$SurveyResponseCopyWithImpl(this._value, this._then);

  final SurveyResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyResponse) _then;

  @override
  $Res call({
    Object? surveyAnswerResponse = freezed,
    Object? answerIds = freezed,
    Object? userSurveyResponseWeight = freezed,
  }) {
    return _then(_value.copyWith(
      surveyAnswerResponse: surveyAnswerResponse == freezed
          ? _value.surveyAnswerResponse
          : surveyAnswerResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      answerIds: answerIds == freezed
          ? _value.answerIds
          : answerIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      userSurveyResponseWeight: userSurveyResponseWeight == freezed
          ? _value.userSurveyResponseWeight
          : userSurveyResponseWeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SurveyResponseCopyWith<$Res>
    implements $SurveyResponseCopyWith<$Res> {
  factory _$SurveyResponseCopyWith(
          _SurveyResponse value, $Res Function(_SurveyResponse) then) =
      __$SurveyResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'SurveyAnswerResponse')
          String? surveyAnswerResponse,
      @JsonKey(name: 'AnswerIds')
          List<int>? answerIds,
      @JsonKey(name: 'UserSurveyResponseWeight')
          int? userSurveyResponseWeight});
}

/// @nodoc
class __$SurveyResponseCopyWithImpl<$Res>
    extends _$SurveyResponseCopyWithImpl<$Res>
    implements _$SurveyResponseCopyWith<$Res> {
  __$SurveyResponseCopyWithImpl(
      _SurveyResponse _value, $Res Function(_SurveyResponse) _then)
      : super(_value, (v) => _then(v as _SurveyResponse));

  @override
  _SurveyResponse get _value => super._value as _SurveyResponse;

  @override
  $Res call({
    Object? surveyAnswerResponse = freezed,
    Object? answerIds = freezed,
    Object? userSurveyResponseWeight = freezed,
  }) {
    return _then(_SurveyResponse(
      surveyAnswerResponse: surveyAnswerResponse == freezed
          ? _value.surveyAnswerResponse
          : surveyAnswerResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      answerIds: answerIds == freezed
          ? _value.answerIds
          : answerIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      userSurveyResponseWeight: userSurveyResponseWeight == freezed
          ? _value.userSurveyResponseWeight
          : userSurveyResponseWeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyResponse implements _SurveyResponse {
  _$_SurveyResponse(
      {@JsonKey(name: 'SurveyAnswerResponse')
          this.surveyAnswerResponse,
      @JsonKey(name: 'AnswerIds')
          this.answerIds,
      @JsonKey(name: 'UserSurveyResponseWeight')
          this.userSurveyResponseWeight});

  factory _$_SurveyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyResponseFromJson(json);

  @override
  @JsonKey(name: 'SurveyAnswerResponse')
  final String? surveyAnswerResponse;
  @override
  @JsonKey(name: 'AnswerIds')
  final List<int>? answerIds;
  @override
  @JsonKey(name: 'UserSurveyResponseWeight')
  final int? userSurveyResponseWeight;

  @override
  String toString() {
    return 'SurveyResponse(surveyAnswerResponse: $surveyAnswerResponse, answerIds: $answerIds, userSurveyResponseWeight: $userSurveyResponseWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyResponse &&
            const DeepCollectionEquality()
                .equals(other.surveyAnswerResponse, surveyAnswerResponse) &&
            const DeepCollectionEquality().equals(other.answerIds, answerIds) &&
            const DeepCollectionEquality().equals(
                other.userSurveyResponseWeight, userSurveyResponseWeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surveyAnswerResponse),
      const DeepCollectionEquality().hash(answerIds),
      const DeepCollectionEquality().hash(userSurveyResponseWeight));

  @JsonKey(ignore: true)
  @override
  _$SurveyResponseCopyWith<_SurveyResponse> get copyWith =>
      __$SurveyResponseCopyWithImpl<_SurveyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyResponseToJson(this);
  }
}

abstract class _SurveyResponse implements SurveyResponse {
  factory _SurveyResponse(
      {@JsonKey(name: 'SurveyAnswerResponse')
          String? surveyAnswerResponse,
      @JsonKey(name: 'AnswerIds')
          List<int>? answerIds,
      @JsonKey(name: 'UserSurveyResponseWeight')
          int? userSurveyResponseWeight}) = _$_SurveyResponse;

  factory _SurveyResponse.fromJson(Map<String, dynamic> json) =
      _$_SurveyResponse.fromJson;

  @override
  @JsonKey(name: 'SurveyAnswerResponse')
  String? get surveyAnswerResponse;
  @override
  @JsonKey(name: 'AnswerIds')
  List<int>? get answerIds;
  @override
  @JsonKey(name: 'UserSurveyResponseWeight')
  int? get userSurveyResponseWeight;
  @override
  @JsonKey(ignore: true)
  _$SurveyResponseCopyWith<_SurveyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
