import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/ThemeModel.dart';

final ThemeDataReducer = combineReducers<ThemeModel>(
  [TypedReducer<ThemeModel, RefreshThemeAction>(_refresh)],
);

ThemeModel _refresh(ThemeModel themeModel, action) {
  themeModel = action.themeModel;
  return themeModel;
}

class RefreshThemeAction {
  final ThemeModel themeModel;

  RefreshThemeAction(this.themeModel);
}
