import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:real/constants/urls.dart';
import 'package:real/data/dataproviders/api_base_helper.dart';
import 'package:real/data/models/question_model/question_model.dart';
import 'package:real/data/models/survey_response/survey_response.dart';

@lazySingleton
class SurveyRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<QuestionModel> postSurveyResponse(
      SurveyResponse _surveyResponse, String _fbID, int _quesID) async {
    String _jsonSurveyResponse = jsonEncode(_surveyResponse);
    final _response = await _helper.post(
        urlUsers + _fbID + '/Profile/' + _quesID.toString(),
        _jsonSurveyResponse);
    final _rawList = await _response.transform(utf8.decoder).join();
    // print(rawList);
    return QuestionModel.fromJson(jsonDecode(_rawList));
  }

  Future<QuestionModel> patchSurveyResponse(
      SurveyResponse _surveyResponse, String _fbID, int _quesID) async {
    String _jsonSurveyResponse = jsonEncode(_surveyResponse);
    final _response = await _helper.patch(
        urlUsers + _fbID + '/Profile/' + _quesID.toString(),
        _jsonSurveyResponse);
    final _rawList = await _response.transform(utf8.decoder).join();
    // print(rawList);
    return QuestionModel.fromJson(jsonDecode(_rawList));
  }

  Future<List<QuestionModel>> fetchSurvey() async {
    final response = await _helper.get(urlSurveyQuestions);
    final rawList = await response.transform(utf8.decoder).join();

    Iterable list = jsonDecode(rawList);
    return list.map((model) => QuestionModel.fromJson(model)).toList();
  }
}
