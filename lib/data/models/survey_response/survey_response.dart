import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_response.freezed.dart';
part 'survey_response.g.dart';

@freezed
class SurveyResponse with _$SurveyResponse {
  factory SurveyResponse({
    @JsonKey(name: 'SurveyAnswerResponse') String? surveyAnswerResponse,
    @JsonKey(name: 'AnswerIds') List<int>? answerIds,
    @JsonKey(name: 'UserSurveyResponseWeight') int? userSurveyResponseWeight,
  }) = _SurveyResponse;

  factory SurveyResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyResponseFromJson(json);
}
