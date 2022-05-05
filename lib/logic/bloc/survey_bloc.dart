import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/question_model/question_model.dart';
import 'package:real/data/models/survey_response/survey_response.dart';
import 'package:real/data/repositories/survey_repository.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class SurveyBloc extends Bloc {
  late SurveyRepository _surveyRepository;

  StreamController<ApiResponse<List<QuestionModel>>> _surveyListController =
      // StreamController<ApiResponse<List<QuestionModel>>>();
      BehaviorSubject();

  StreamSink<ApiResponse<List<QuestionModel>>> get surveySink =>
      _surveyListController.sink;

  Stream<ApiResponse<List<QuestionModel>>> get surveyStream =>
      _surveyListController.stream;

  SurveyBloc() : super(ApiResponse.loading('Fetching Survey Questions')) {
    _surveyListController = BehaviorSubject();
    // StreamController<ApiResponse<List<QuestionModel>>>();
    _surveyRepository = SurveyRepository();
    // fetchSurvey();
  }

  fetchSurvey() async {
    surveySink.add(ApiResponse.loading('Fetching Survey Questions'));
    try {
      List<QuestionModel> questions = await _surveyRepository.fetchSurvey();
      surveySink.add(ApiResponse.completed(questions));
    } catch (e) {
      surveySink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  Future<bool> patchSurveyResponse(
      SurveyResponse _surveyResponse, String _fbID, int _quesID) async {
    try {
      await _surveyRepository.patchSurveyResponse(
          _surveyResponse, _fbID, _quesID);
      return true;
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<bool> postSurveyResponse(
      SurveyResponse _surveyResponse, String _fbID, int _quesID) async {
    try {
      await _surveyRepository.postSurveyResponse(
          _surveyResponse, _fbID, _quesID);
      return true;
    } catch (e) {
      print(e);
    }
    return false;
  }

  dispose() {
    _surveyListController.close();
    _surveyListController = 
  StreamController<ApiResponse<List<QuestionModel>>>();
  }
}
