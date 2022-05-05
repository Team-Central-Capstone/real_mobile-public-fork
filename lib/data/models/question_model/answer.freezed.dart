// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
class _$AnswerTearOff {
  const _$AnswerTearOff();

  _Answer call(
      {@JsonKey(name: 'SurveyQuestionId') int? surveyQuestionId,
      @JsonKey(name: 'AnswerText') String? answerText,
      @JsonKey(name: 'UserSurveyResponses') List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'Deleted') bool? deleted,
      @JsonKey(name: 'Id') int? id}) {
    return _Answer(
      surveyQuestionId: surveyQuestionId,
      answerText: answerText,
      userSurveyResponses: userSurveyResponses,
      deleted: deleted,
      id: id,
    );
  }

  Answer fromJson(Map<String, Object?> json) {
    return Answer.fromJson(json);
  }
}

/// @nodoc
const $Answer = _$AnswerTearOff();

/// @nodoc
mixin _$Answer {
  @JsonKey(name: 'SurveyQuestionId')
  int? get surveyQuestionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'AnswerText')
  String? get answerText => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserSurveyResponses')
  List<dynamic>? get userSurveyResponses => throw _privateConstructorUsedError;
  @JsonKey(name: 'Deleted')
  bool? get deleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'SurveyQuestionId') int? surveyQuestionId,
      @JsonKey(name: 'AnswerText') String? answerText,
      @JsonKey(name: 'UserSurveyResponses') List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'Deleted') bool? deleted,
      @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object? surveyQuestionId = freezed,
    Object? answerText = freezed,
    Object? userSurveyResponses = freezed,
    Object? deleted = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      surveyQuestionId: surveyQuestionId == freezed
          ? _value.surveyQuestionId
          : surveyQuestionId // ignore: cast_nullable_to_non_nullable
              as int?,
      answerText: answerText == freezed
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      userSurveyResponses: userSurveyResponses == freezed
          ? _value.userSurveyResponses
          : userSurveyResponses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) then) =
      __$AnswerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'SurveyQuestionId') int? surveyQuestionId,
      @JsonKey(name: 'AnswerText') String? answerText,
      @JsonKey(name: 'UserSurveyResponses') List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'Deleted') bool? deleted,
      @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class __$AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(_Answer _value, $Res Function(_Answer) _then)
      : super(_value, (v) => _then(v as _Answer));

  @override
  _Answer get _value => super._value as _Answer;

  @override
  $Res call({
    Object? surveyQuestionId = freezed,
    Object? answerText = freezed,
    Object? userSurveyResponses = freezed,
    Object? deleted = freezed,
    Object? id = freezed,
  }) {
    return _then(_Answer(
      surveyQuestionId: surveyQuestionId == freezed
          ? _value.surveyQuestionId
          : surveyQuestionId // ignore: cast_nullable_to_non_nullable
              as int?,
      answerText: answerText == freezed
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      userSurveyResponses: userSurveyResponses == freezed
          ? _value.userSurveyResponses
          : userSurveyResponses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer implements _Answer {
  _$_Answer(
      {@JsonKey(name: 'SurveyQuestionId') this.surveyQuestionId,
      @JsonKey(name: 'AnswerText') this.answerText,
      @JsonKey(name: 'UserSurveyResponses') this.userSurveyResponses,
      @JsonKey(name: 'Deleted') this.deleted,
      @JsonKey(name: 'Id') this.id});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  @JsonKey(name: 'SurveyQuestionId')
  final int? surveyQuestionId;
  @override
  @JsonKey(name: 'AnswerText')
  final String? answerText;
  @override
  @JsonKey(name: 'UserSurveyResponses')
  final List<dynamic>? userSurveyResponses;
  @override
  @JsonKey(name: 'Deleted')
  final bool? deleted;
  @override
  @JsonKey(name: 'Id')
  final int? id;

  @override
  String toString() {
    return 'Answer(surveyQuestionId: $surveyQuestionId, answerText: $answerText, userSurveyResponses: $userSurveyResponses, deleted: $deleted, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Answer &&
            const DeepCollectionEquality()
                .equals(other.surveyQuestionId, surveyQuestionId) &&
            const DeepCollectionEquality()
                .equals(other.answerText, answerText) &&
            const DeepCollectionEquality()
                .equals(other.userSurveyResponses, userSurveyResponses) &&
            const DeepCollectionEquality().equals(other.deleted, deleted) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surveyQuestionId),
      const DeepCollectionEquality().hash(answerText),
      const DeepCollectionEquality().hash(userSurveyResponses),
      const DeepCollectionEquality().hash(deleted),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(this);
  }
}

abstract class _Answer implements Answer {
  factory _Answer(
      {@JsonKey(name: 'SurveyQuestionId') int? surveyQuestionId,
      @JsonKey(name: 'AnswerText') String? answerText,
      @JsonKey(name: 'UserSurveyResponses') List<dynamic>? userSurveyResponses,
      @JsonKey(name: 'Deleted') bool? deleted,
      @JsonKey(name: 'Id') int? id}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  @JsonKey(name: 'SurveyQuestionId')
  int? get surveyQuestionId;
  @override
  @JsonKey(name: 'AnswerText')
  String? get answerText;
  @override
  @JsonKey(name: 'UserSurveyResponses')
  List<dynamic>? get userSurveyResponses;
  @override
  @JsonKey(name: 'Deleted')
  bool? get deleted;
  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$AnswerCopyWith<_Answer> get copyWith => throw _privateConstructorUsedError;
}
