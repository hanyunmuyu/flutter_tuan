import 'package:flutter_tuan/http/HttpClient.dart';
import 'package:flutter_tuan/service/BaseService.dart';
import 'package:flutter_tuan/model/SchoolListModel.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class SchoolService extends BaseService {
  static Future<SchoolListModel> getSchoolList(BuildContext context,
      [int page = 1]) async {
    String jsonStr = await HttpClient.get('/api/v1/school', {"page": page});
    Map map = json.decode(jsonStr);
    SchoolListModel schoolListModel = SchoolListModel.fromJson(map);
    if (BaseService.checkToken(context, schoolListModel)) {
      return schoolListModel;
    }
    return schoolListModel;
  }
}
