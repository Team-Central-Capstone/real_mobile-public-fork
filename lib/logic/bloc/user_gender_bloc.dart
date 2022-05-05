import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/user_gender_model/user_gender_model.dart';
import 'package:real/data/repositories/user_gender_repository.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class UserGenderBloc extends Bloc {
  late UserGenderRepository _userGenderRepository;

  StreamController<ApiResponse<List<UserGenderModel>>> _userGendersListController =
      BehaviorSubject();
  // StreamController<ApiResponse<UserGenderModelList>>.broadcast();

  StreamSink<ApiResponse<List<UserGenderModel>>> get userGendersSink =>
      _userGendersListController.sink;

  Stream<ApiResponse<List<UserGenderModel>>> get userGendersStream =>
      _userGendersListController.stream;

  UserGenderBloc() : super(ApiResponse.loading('Fetching Genders')) {
    _userGendersListController =
        StreamController<ApiResponse<List<UserGenderModel>>>();
    _userGenderRepository = UserGenderRepository();
  }

  fetchUserGendersList() async {
    userGendersSink.add(ApiResponse.loading('Fetching Genders'));
    try {
      List<UserGenderModel> userGenders =
          await _userGenderRepository.fetchUserGendersList();
      userGendersSink.add(ApiResponse.completed(userGenders));
    } catch (e) {
      userGendersSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _userGendersListController.close();  
   _userGendersListController = StreamController<ApiResponse<List<UserGenderModel>>>();
  }
}
