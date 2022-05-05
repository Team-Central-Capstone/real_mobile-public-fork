import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/user_body_type_model/user_body_type_model.dart';
import 'package:real/data/repositories/user_body_type_repository.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class UserBodyTypeBloc extends Bloc {
  late UserBodyTypeRepository _userBodyTypeRepository;

  StreamController<ApiResponse<List<UserBodyTypeModel>>>
      _userBodyTypesListController = BehaviorSubject();
  // StreamController<ApiResponse<UserBodyTypeModel>>();

  StreamSink<ApiResponse<List<UserBodyTypeModel>>> get userBodyTypesSink =>
      _userBodyTypesListController.sink;

  Stream<ApiResponse<List<UserBodyTypeModel>>> get userBodyTypesStream =>
      _userBodyTypesListController.stream;

  UserBodyTypeBloc() : super(ApiResponse.loading('Fetching Body Types')) {
    _userBodyTypesListController =
        StreamController<ApiResponse<List<UserBodyTypeModel>>>();
    _userBodyTypeRepository = UserBodyTypeRepository();
  }

  fetchUserBodyTypesList() async {
    userBodyTypesSink.add(ApiResponse.loading('Fetching Body Types'));
    try {
      List<UserBodyTypeModel> userBodyTypes =
          await _userBodyTypeRepository.fetchUserBodyTypesList();
      userBodyTypesSink.add(ApiResponse.completed(userBodyTypes));
    } catch (e) {
      userBodyTypesSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _userBodyTypesListController.close();
    _userBodyTypesListController =
        StreamController<ApiResponse<List<UserBodyTypeModel>>>();
  }
}
