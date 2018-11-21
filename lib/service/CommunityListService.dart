import 'package:flutter_tuan/http/HttpClient.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/service/BaseService.dart';
import 'dart:convert';
import 'package:flutter_tuan/model/CommunityListModel.dart';
import 'package:flutter/material.dart';

class CommunityListService extends BaseService {
  static Future<CommunityListModel> getCommunityList(
      Store store, BuildContext context,
      [int page = 1]) async {
    String token;
    if (store.state.user != null) {
      token = store.state.user.data['api_token'];
    }
    String jsonStr = await HttpClient.get(
        '/api/v1/community', {"page": page, "api_token": token});
    Map<String, dynamic> map = json.decode(jsonStr);
    CommunityListModel communityListModel = CommunityListModel.fromJson(map);
    if (BaseService.checkToken(context, communityListModel)) {
      return communityListModel;
    }
    return communityListModel;
  }
}
