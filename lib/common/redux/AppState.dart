import 'UserRedux.dart';
import 'ThemeRedux.dart';
import 'package:flutter_tuan/model/UserModel.dart';
import 'package:flutter_tuan/model/ThemeModel.dart';

class AppState {
  UserModel user;
  ThemeModel themeModel;

  AppState({this.user, this.themeModel});
}

AppState appReducer(AppState state, action) {
  return AppState(
    themeModel: ThemeDataReducer(state.themeModel, action),
    user: UserReducer(state.user, action),
  );
}
