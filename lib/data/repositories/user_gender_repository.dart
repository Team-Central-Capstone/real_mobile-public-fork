import 'dart:async';
import 'dart:convert';

import 'package:real/constants/urls.dart';
import 'package:real/data/dataproviders/api_base_helper.dart';
import 'package:real/data/models/user_gender_model/user_gender_model.dart';

class UserGenderRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<UserGenderModel>> fetchUserGendersList() async {
    final response = await _helper.get(urlUserGenders);

    final rawList = await response.transform(utf8.decoder).join();
    // print('rawList: '+ rawList);

    Iterable list = jsonDecode(rawList);

    return list.map((model) => UserGenderModel.fromJson(model)).toList();
    // return UserGenderModelList.fromJson({'userGenderModelList': jsonDecode(rawList)});
  }
}
