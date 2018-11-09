import 'package:flutter/material.dart';
import 'package:flutter_tuan/service/UserService.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:flutter_tuan/common/redux/ThemeRedux.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('退出'),
        ),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new StoreConnector<AppState, Store>(
              builder: (context, store) {
                return new FlatButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    UserService.logout(context, store);
                  },
                  child: new Text('退出'),
                );
              },
              converter: (store) => store,
            ),
            new StoreConnector<AppState, Store>(
              builder: (context, store) {
                return new FlatButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: new Text('purple'),
                  onPressed: () {
                    store.dispatch(
                      RefreshThemeAction(
                        new ThemeData(
                          primarySwatch: Colors.purple,
                        ),
                      ),
                    );
                  },
                );
              },
              converter: (store) => store,
            ),
            new StoreConnector<AppState, Store>(
              builder: (context, store) {
                return new FlatButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: new Text('blue'),
                  onPressed: () {
                    store.dispatch(
                      RefreshThemeAction(
                        ThemeData.light(),
                      ),
                    );
                  },
                );
              },
              converter: (store) => store,
            ),
            new StoreConnector<AppState, Store>(
              builder: (context, store) {
                return new FlatButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: new Text('dark'),
                  onPressed: () {
                    store.dispatch(
                      RefreshThemeAction(
                        ThemeData.dark(),
                      ),
                    );
                  },
                );
              },
              converter: (store) => store,
            ),
          ],
        ),
      ),
    );
  }
}
