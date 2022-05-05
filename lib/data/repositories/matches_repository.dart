import 'dart:async';
import 'dart:convert';

import 'package:real/constants/urls.dart';
import 'package:real/data/dataproviders/api_base_helper.dart';
import 'package:real/data/models/matches_model/matches_model.dart';
import 'package:real/data/models/user_gender_model/user_gender_model.dart';

class MatchesRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<MatchesModel>> fetchMatchesList(
      String fbId, String startTime, String endTime) async {
    final response = await _helper.get(urlMatches +
        fbId +
        '?StartTime=' +
        startTime +
        '&EndTime=' +
        endTime +
        '&MinMiles=100&MinTime=00%3A05%3A00');

    final rawList = await response.transform(utf8.decoder).join();
    print('rawList: ' + rawList);

    Iterable list = jsonDecode(rawList);

    return list.map((model) => MatchesModel.fromJson(model)).toList();
  }

  Future postMatchApproval(String userId, String secondId) async {
    try {
      final response = await _helper.postWithoutBody(
          urlMatches + userId + '/ApproveMatchWith/' + secondId);
      final rawList = await response.transform(utf8.decoder).join();
      print('rawList: ' + rawList);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<List<MatchesModel>> fetchApprovedMatchesList(String fbId) async {
    
    final response = await _helper.get(urlMatches + fbId + '/AllApproved');

    final rawList = await response.transform(utf8.decoder).join();
    print('rawList: ' + rawList);

    Iterable list = jsonDecode(rawList);

    return list.map((model) => MatchesModel.fromJson(model)).toList();
  }

  /* 
    /API/Matches/
    nCBkw9r9ItcpEc9KAvd2llgfmeJ3
    ?StartTime=2022-04-18T12%3A00%3A00
    &EndTime=2022-04-26T12%3A00%3A00
    &MinMiles=100
    &MinTime=00%3A05%3A00
   */

  /* 
    /API/Matches
    /nCBkw9r9ItcpEc9KAvd2llgfmeJ3
    /ApproveMatchWith
    /6QUsr0aeWih0Z3Zb7ibbBPLjEk73
  */
}
