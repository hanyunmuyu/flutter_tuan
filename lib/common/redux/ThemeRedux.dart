import 'package:redux/redux.dart';
import 'package:flutter/material.dart';

final ThemeDataReducer = combineReducers<ThemeData>(
  [TypedReducer<ThemeData, RefreshThemeAction>(_refresh)],
);

ThemeData _refresh(ThemeData themeData, action) {
  themeData = action.themeData;
  return themeData;
}

class RefreshThemeAction {
  final ThemeData themeData;

  RefreshThemeAction(this.themeData);
}
