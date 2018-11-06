import 'package:flutter_tuan/http/HttpClient.dart';
import 'BaseService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/UserModel.dart';
import 'dart:convert';
import 'package:flutter_tuan/tool/Storage.dart';

class UserService extends BaseService {
  static login(BuildContext context, Map<String, dynamic> map) async {
    String res = await HttpClient.post('/api/v1/login', map);
    print(res);

    Storage.write('userModel', res);
    Map user = json.decode(res);
    UserModel userModel = UserModel.fromJson(user);
    Navigator.of(context).pushNamed('/home');
    return userModel;
  }

  static checkUserIsLogin(BuildContext context) async {
    var userJson = await Storage.read('userModel');
    return userJson != null;
  }
}
