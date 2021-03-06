import 'package:flutter_tuan/http/HttpClient.dart';
import 'BaseService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/UserModel.dart';
import 'dart:convert';
import 'package:flutter_tuan/tool/Storage.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/common/redux/UserRedux.dart';
import 'package:flutter_tuan/model/ThemeModel.dart';
import 'package:flutter_tuan/common/redux/ThemeRedux.dart';
import 'package:flutter_tuan/model/BaseDataModel.dart';

class UserService extends BaseService {
  static String userKey = "userModel";
  static String themeKey = "themeData";

  static Future doLogin(Map<String, dynamic> map, Store store) async {
    String res = await HttpClient.post('/api/v1/login', map);

    Storage.write(userKey, res);
    Map user = json.decode(res);
    UserModel userModel = UserModel.fromJson(user);
    store.dispatch(UpdateUserAction(userModel));
  }

  static Future getUserInfo() async {
    var userJson = await Storage.read(userKey);
    return userJson;
  }

  static updateUserInfo(Store store, String userJson) async {
    store.dispatch(UpdateUserAction(UserModel.fromJson(json.decode(userJson))));
  }

  static logout(BuildContext context, Store store) async {
    store.dispatch(UpdateUserAction(null));
    Storage.clear();
    Navigator.of(context)
      ..pop(true)
      ..pushReplacementNamed('/home');
  }

  static Future register(String mobile, String password) async {
    String res = await HttpClient.post(
        '/api/v1/register', {"mobile": mobile, "password": password});
    return res;
  }

  static changeUserTheme(Store store, String themeData) async {
    ThemeModel themeModel = new ThemeModel(themeData.trim().toLowerCase());
    Storage.write(themeKey, json.encode(themeModel));
    store.dispatch(RefreshThemeAction(themeModel));
  }

  static initTheme(Store store, String themeModelJson) async {
    Map map = json.decode(themeModelJson);
    store.dispatch(RefreshThemeAction(new ThemeModel(map['themeData'])));
  }

  static Future getThemeInfo() async {
    return Storage.read(themeKey);
  }

  static Future<BaseDataModel> payAttentionToCommunity(
      BuildContext context, Store store, int communityId) async {
    String token;
    if (store.state.user != null) {
      token = store.state.user.data['api_token'];
    }
    String jsonStr = await HttpClient.post(
        '/api/v1/community/attention', {"id": communityId, "api_token": token});
    Map map = json.decode(jsonStr);
    BaseDataModel baseDataModel = BaseDataModel.fromJson(map);
    if (BaseService.checkToken(context, baseDataModel)) {
      return baseDataModel;
    }
    return baseDataModel;
  }

  static Future<BaseDataModel> joinInCommunity(
      BuildContext context, Store store, int communityId) async {
    String token;
    if (store.state.user != null) {
      token = store.state.user.data['api_token'];
    }
    String jsonStr = await HttpClient.post(
        '/api/v1/community/join', {"id": communityId, "api_token": token});
    Map map = json.decode(jsonStr);
    BaseDataModel baseDataModel = BaseDataModel.fromJson(map);
    if (BaseService.checkToken(context, baseDataModel)) {
      return baseDataModel;
    }
    return baseDataModel;
  }
}
