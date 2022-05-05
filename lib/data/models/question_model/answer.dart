import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  factory Answer({
    @JsonKey(name: 'SurveyQuestionId') int? surveyQuestionId,
    @JsonKey(name: 'AnswerText') String? answerText,
    @JsonKey(name: 'UserSurveyResponses') List<dynamic>? userSurveyResponses,
    @JsonKey(name: 'Deleted') bool? deleted,
    @JsonKey(name: 'Id') int? id,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}
