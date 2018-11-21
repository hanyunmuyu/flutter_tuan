import 'package:flutter_tuan/http/HttpClient.dart';
import 'package:flutter_tuan/model/BaseModel.dart';
import 'package:flutter/material.dart';

class BaseService {
  static HttpClient httpClient = new HttpClient();

  static bool checkToken(BuildContext context, BaseModel baseModel) {
    print(baseModel.code);
    switch (baseModel.code) {
      //token认证失败
      case 4000:
        Navigator.of(context).pushNamed('/login');
        break;
    }

    return true;
  }
}
