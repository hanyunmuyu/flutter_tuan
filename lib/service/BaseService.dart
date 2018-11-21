import 'package:flutter_tuan/http/HttpClient.dart';
import 'package:flutter_tuan/model/BaseModel.dart';
import 'package:flutter/material.dart';

class BaseService {
  static HttpClient httpClient = new HttpClient();

  static bool checkToken(BuildContext context, BaseModel baseModel) {
    if (baseModel.code != 200) {
      Navigator.of(context).pushNamed('/login');
      return false;
    }
    return true;
  }
}
