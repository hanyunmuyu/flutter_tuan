import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/page/MainPage.dart';
import 'package:flutter_tuan/service/UserService.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SplashPage extends StatefulWidget {
  @override
  State createState() {
    return new _SplashState();
  }
}

class _SplashState extends State<SplashPage> {
  int time = 3;
  Timer t;

  String img =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000298372&di=fc3d1772b1cd7ecf9712c088895c9f50&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dshijue1%252C0%252C0%252C294%252C40%2Fsign%3Df5f84b07e1c4b7452099bf55a7957462%2F42a98226cffc1e17752f411f4090f603738de909.jpg';

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Store<AppState> store = StoreProvider.of<AppState>(context);
    UserService.getUserInfo().then((userJson) {
      if (userJson != null) {
        UserService.updateUserInfo(store, userJson);
      }
    });
    UserService.getThemeInfo().then((themeModelJson) {
      if (themeModelJson != null) {
        UserService.initTheme(store, themeModelJson);
      }
    });
  }

  void _go() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
      return new MainPage();
    }));
  }

  void _timer() async {
    t = new Timer(const Duration(seconds: 1), () {
      if (time <= 1) {
        t.cancel();
        _go();
      } else {
        setState(() {
          time--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _timer();
    return new Center(
      child: new StoreConnector<AppState, Store>(
        builder: (context, store) {
          return new Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: new Stack(
              children: <Widget>[
                SizedBox.expand(
                  child: Image(
                    image: new CachedNetworkImageProvider(img),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  child: FlatButton(
                    onPressed: () {
                      t.cancel();
                      _go();
                    },
                    child: new Text(
                      "$time秒",
                      textScaleFactor: 1.5,
                    ),
                    color: Colors.black12,
                    textColor: Colors.black,
                  ),
                  top: MediaQuery.of(context).padding.top,
                  right: 8.0,
                ),
              ],
            ),
          );
        },
        converter: (store) => store,
      ),
    );
  }
}
