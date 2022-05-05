import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:real/constants/urls.dart';
import 'package:real/data/dataproviders/api_base_helper.dart';
import 'package:real/data/models/location_model/location_model.dart';
import 'package:real/data/models/profile_image_model/profile_image_model.dart';
import 'package:real/data/models/profile_user_model/profile_user_model.dart';
import 'package:real/data/models/response_get_image/response_get_image.dart';

@lazySingleton
class UserProfileRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<ProfileUserModel> postUserProfile(
      ProfileUserModel _profileUserModel) async {
    String jsonUser = jsonEncode(_profileUserModel);
    final response = await _helper.post(urlUsers, jsonUser);
    final rawList = await response.transform(utf8.decoder).join();
    // print(rawList);
    return ProfileUserModel.fromJson(jsonDecode(rawList));
  }

  Future<ProfileUserModel> patchUserProfile(
      String _fbID, ProfileUserModel _profileUserModel) async {
    String jsonUser = jsonEncode(_profileUserModel);
    final response = await _helper.patch(urlUsers + _fbID, jsonUser);
    final rawList = await response.transform(utf8.decoder).join();
    print(rawList);
    return _profileUserModel;
  }

  Future<ProfileUserModel> fetchUserProfile(
    String _fbID,
  ) async {
    final response = await _helper.get(urlUsers + _fbID);
    final rawList = await response.transform(utf8.decoder).join();
    // print(rawList);
    return ProfileUserModel.fromJson(jsonDecode(rawList));
  }

  Future<ProfileImageModel> postUserProfileImage(
      String _fbID, ProfileImageModel _profileImageModel) async {
    String jsonUser = jsonEncode(_profileImageModel);
    final response = await _helper.post(urlUsers + _fbID + '/Image', jsonUser);
    final rawList = await response.transform(utf8.decoder).join();
    // print(rawList);
    return ProfileImageModel.fromJson(jsonDecode(rawList));
  }

  Future<ProfileImageModel> fetchUserProfileImage(
    String _fbID,
  ) async {
    final response = await _helper.get(urlUsers + _fbID + '/Image');
    final rawList = await response.transform(utf8.decoder).join();
    print(rawList);
    return ProfileImageModel.fromJson(jsonDecode(rawList));
  }

  Future<ResponseGetImage> fetchUserProfileImageWithData(
    String _fbID,
  ) async {
    final response = await _helper.get(urlUsers + _fbID + '/Image');
    final rawList = await response.transform(utf8.decoder).join();
    print(rawList);
    return ResponseGetImage.fromJson(jsonDecode(rawList));
  }

  Future<LocationModel> postLocationUpdate(LocationModel _locationModel) async {
    List<LocationModel> arrModel = [];
    arrModel.add(_locationModel);
    String jsonLocationData = jsonEncode(arrModel);
    final response = await _helper.post(urlLocation, jsonLocationData);
    // final rawList = await response.transform(utf8.decoder).join();
    // print(rawList);
    return LocationModel.fromJson(jsonDecode(response.body));
  }
}
