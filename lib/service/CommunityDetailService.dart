import 'package:flutter/material.dart';
import 'package:flutter_tuan/service/BaseService.dart';
import 'package:redux/redux.dart';
import 'dart:convert';
import 'package:flutter_tuan/http/HttpClient.dart';
import 'package:flutter_tuan/model/CommunityDetailModel.dart';

class CommunityDetailService extends BaseService {
  static Future<CommunityDetailModel> getCommunityDetail(
      Store store, BuildContext context, int id) async {
    String token;
    if (store.state.user != null) {
      token = store.state.user.data['api_token'];
    }
    String jsonStr = await HttpClient.get(
        '/api/v1/community/detail', {"id": id, "api_token": token});
    Map<String, dynamic> map = json.decode(jsonStr);
    CommunityDetailModel communityDetailModel =
        CommunityDetailModel.fromJson(map);
    return communityDetailModel;
  }
}
