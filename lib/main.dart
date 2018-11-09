import 'package:flutter/material.dart';
import 'page/MainPage.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:flutter_tuan/page/LoginPage.dart';
import 'package:flutter_tuan/page/SplashPage.dart';
import 'package:flutter_tuan/model/ThemeModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(
      themeModel: new ThemeModel('purple'),
      user: null,
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  State createState() {
    return new _App();
  }
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeModel.map[store.state.themeModel.themeData],
          routes: {
            '/home': (BuildContext context) {
              return new MainPage();
            },
            '/login': (BuildContext context) {
              return new LoginPage();
            },
          },
          home: new SplashPage(),
        );
      },
      converter: (store) => store,
    );
  }
}
