import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/location_model/location_model.dart';
import 'package:real/data/models/profile_image_model/profile_image_model.dart';
import 'package:real/data/models/profile_user_model/profile_user_model.dart';
import 'package:real/data/models/response_get_image/response_get_image.dart';
import 'package:real/data/repositories/user_profile_repository.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class UserProfileBloc extends Bloc {
  late UserProfileRepository _userProfileRepository;

  StreamController<ApiResponse<ProfileUserModel>> _userProfileListController =
      BehaviorSubject();
  // StreamController<ApiResponse<UserGenderModelList>>.broadcast();

  StreamController<ApiResponse<ProfileImageModel>> _userProfileImageController =
      BehaviorSubject();

  StreamSink<ApiResponse<ProfileUserModel>> get userProfileSink =>
      _userProfileListController.sink;
  Stream<ApiResponse<ProfileUserModel>> get userProfileStream =>
      _userProfileListController.stream;

  StreamSink<ApiResponse<ProfileImageModel>> get userProfileImageSink =>
      _userProfileImageController.sink;
  Stream<ApiResponse<ProfileImageModel>> get userProfileImageStream =>
      _userProfileImageController.stream;

  UserProfileBloc() : super(ApiResponse.loading('Fetching Profile')) {
    _userProfileListController =
        StreamController<ApiResponse<ProfileUserModel>>();
    _userProfileImageController =
        StreamController<ApiResponse<ProfileImageModel>>();
    _userProfileRepository = UserProfileRepository();
  }

  fetchUserProfile(
    String _fbID,
  ) async {
    userProfileSink.add(ApiResponse.loading('Fetching Profile'));
    try {
      ProfileUserModel userProfile =
          await _userProfileRepository.fetchUserProfile(_fbID);
      userProfileSink.add(ApiResponse.completed(userProfile));
    } catch (e) {
      userProfileSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  Future<ProfileUserModel?> postUserProfile(
      ProfileUserModel _profileUserModel) async {
    try {
      ProfileUserModel userProfile =
          await _userProfileRepository.postUserProfile(_profileUserModel);
      return userProfile;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<ProfileUserModel?> patchUserProfile(
      String _fbID, ProfileUserModel _profileUserModel) async {
    try {
      ProfileUserModel userProfile = await _userProfileRepository
          .patchUserProfile(_fbID, _profileUserModel);
      return userProfile;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<ProfileImageModel?> postUserProfileImage(
      String _fbID, ProfileImageModel _profileImageModel) async {
    try {
      ProfileImageModel userProfile = await _userProfileRepository
          .postUserProfileImage(_fbID, _profileImageModel);
      return userProfile;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<ProfileImageModel?> fetchUserProfileImage(
    String _fbID,
  ) async {
    // userProfileImageSink.add(ApiResponse.loading('Fetching Profile Image'));
    try {
      ProfileImageModel userProfile =
          await _userProfileRepository.fetchUserProfileImage(_fbID);
      // userProfileImageSink.add(ApiResponse.completed(userProfile));
      return userProfile;
    } catch (e) {
      // userProfileImageSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
    return null;
  }

  Future<ResponseGetImage?> fetchUserProfileImageWithData(
    String _fbID,
  ) async {
    try {
      ResponseGetImage userProfile =
          await _userProfileRepository.fetchUserProfileImageWithData(_fbID);
      return userProfile;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<LocationModel?> postLocationData(
      String _fbId, double _longitude, double _latitude) async {
    try {
      String? _deviceId = await PlatformDeviceId.getDeviceId;
      LocationModel _locationModel = LocationModel(
          deviceid: _deviceId,
          id: _fbId,
          latitude: _latitude,
          longitude: _longitude);
      LocationModel res =
          await _userProfileRepository.postLocationUpdate(_locationModel);
      return res;
    } catch (e) {
      print(e);
    }
    return null;
  }

  dispose() {
    _userProfileListController.close();
    _userProfileListController =
        StreamController<ApiResponse<ProfileUserModel>>();
    _userProfileImageController.close();
    _userProfileImageController =
        StreamController<ApiResponse<ProfileImageModel>>();
  }
}
