import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/matches_model/matches_model.dart';
import 'package:real/data/repositories/matches_repository.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class MatchesBloc extends Bloc {
  late MatchesRepository _matchesRepository;

  StreamController<ApiResponse<List<MatchesModel>>> _matchesListController =
      BehaviorSubject();
  // StreamController<ApiResponse<UserGenderModelList>>.broadcast();

  StreamSink<ApiResponse<List<MatchesModel>>> get matchesSink =>
      _matchesListController.sink;

  Stream<ApiResponse<List<MatchesModel>>> get matchesStream =>
      _matchesListController.stream;

  MatchesBloc() : super(ApiResponse.loading('Fetching Genders')) {
    _matchesListController =
        StreamController<ApiResponse<List<MatchesModel>>>();
    _matchesRepository = MatchesRepository();
  }

  Future<List<MatchesModel>> fetchMatchesList(String fbId, String startTime, String endTime) async {
    matchesSink.add(ApiResponse.loading('Fetching Matches'));
    try {
      List<MatchesModel> matches =
          await _matchesRepository.fetchMatchesList(fbId, startTime, endTime);
          return matches;
      // matchesSink.add(ApiResponse.completed(matches));
    } catch (e) {
      // matchesSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
    return [];    
  }

  Future<List<MatchesModel>> fetchApprovedMatchesList(String fbId) async {
    
    try {
      List<MatchesModel> matches =
          await _matchesRepository.fetchApprovedMatchesList(fbId);
          return matches;
    } catch (e) {
      print(e);
    }
    return [];    
  }

  postMatchApproval(String userId, String secondId) async {
      try{
        await _matchesRepository.postMatchApproval(userId, secondId);
      } catch (e) {
      print(e);
    }
  }

  dispose() {
    _matchesListController.close();
    _matchesListController = StreamController<ApiResponse<List<MatchesModel>>>();
  }
}
