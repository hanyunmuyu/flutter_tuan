import 'package:flutter/material.dart';
import 'package:flutter_tuan/common/model/User.dart';
import 'UserRedux.dart';
import 'ThemeRedux.dart';

class AppState {
  User user;
  ThemeData themeData;

  AppState({this.user, this.themeData});
}

AppState appReducer(AppState state, action) {
  return AppState(
    themeData: ThemeDataReducer(state.themeData, action),
  );
}
