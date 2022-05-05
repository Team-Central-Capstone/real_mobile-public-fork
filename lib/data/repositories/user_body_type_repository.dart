import 'dart:convert';

import 'package:real/constants/urls.dart';
import 'package:real/data/dataproviders/api_base_helper.dart';
import 'package:real/data/models/user_body_type_model/user_body_type_model.dart';

class UserBodyTypeRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<UserBodyTypeModel>> fetchUserBodyTypesList() async {
    final response = await _helper.get(urlUserBodyTypes);

    final rawList = await response.transform(utf8.decoder).join();
    // print('rawList: '+ rawList);

    Iterable list = jsonDecode(rawList);

    return list.map((model) => UserBodyTypeModel.fromJson(model)).toList();
  }
}
