import 'package:flutter/material.dart';
import 'UserRedux.dart';
import 'ThemeRedux.dart';
import 'package:flutter_tuan/model/UserModel.dart';

class AppState {
  UserModel user;
  ThemeData themeData;

  AppState({this.user, this.themeData});
}

AppState appReducer(AppState state, action) {
  return AppState(
    themeData: ThemeDataReducer(state.themeData, action),
    user: UserReducer(state.user, action),
  );
}
