import 'package:freezed_annotation/freezed_annotation.dart';

import 'answer.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    @JsonKey(name: 'Order') int? order,
    @JsonKey(name: 'QuestionType') int? questionType,
    @JsonKey(name: 'QuestionTypeString') String? questionTypeString,
    @JsonKey(name: 'QuestionText') String? questionText,
    @JsonKey(name: 'Answers') List<Answer>? answers,
    @JsonKey(name: 'Id') int? id,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
