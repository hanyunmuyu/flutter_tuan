import 'package:flutter/material.dart';
import 'page/MainPage.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:flutter_tuan/common/redux/ThemeRedux.dart';
import 'package:flutter_tuan/common/redux/UserRedux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(
      themeData: new ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: store.state.themeData,
        home: new MainPage(),
      ),
    );
  }
}
