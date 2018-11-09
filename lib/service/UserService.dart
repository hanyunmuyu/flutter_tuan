import 'package:flutter_tuan/http/HttpClient.dart';
import 'BaseService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/UserModel.dart';
import 'dart:convert';
import 'package:flutter_tuan/tool/Storage.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/common/redux/UserRedux.dart';

class UserService extends BaseService {
  static String userKey = "userModel";

  static login(BuildContext context, Map<String, dynamic> map) async {
    String res = await HttpClient.post('/api/v1/login', map);
    Storage.write(userKey, res);
    Map user = json.decode(res);
    UserModel userModel = UserModel.fromJson(user);
    Navigator.of(context)
      ..pop(true)
      ..pushReplacementNamed('/home');
    return userModel;
  }

  static Future doLogin(Map<String, dynamic> map, Store store) async {
    String res = await HttpClient.post('/api/v1/login', map);

    Storage.write(userKey, res);
    Map user = json.decode(res);
    UserModel userModel = UserModel.fromJson(user);
    store.dispatch(UpdateUserAction(userModel));
  }

  static void goHome(BuildContext context) async {
    Navigator.of(context)
      ..pop(true)
      ..pushReplacementNamed('/home');
  }

  static Future getUserInfo() async {
    var userJson = await Storage.read(userKey);
    return userJson;
  }

  static logout(BuildContext context, Store store) async {
    store.dispatch(UpdateUserAction(null));
    Storage.delete(userKey);
    Navigator.of(context)
      ..pop(true)
      ..pushReplacementNamed('/home');
  }

  static Future register(String mobile, String password) async {
    String res = await HttpClient.post(
        '/api/v1/register', {"mobile": mobile, "password": password});
    return res;
  }
}
