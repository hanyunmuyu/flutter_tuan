import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/page/MainPage.dart';

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
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541759462297&di=c1c0656609237ad7c17d65e59eadfbed&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D1210175310%2C2567076149%26fm%3D214%26gp%3D0.jpg';

  void _go() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
      return new MainPage();
    }));
  }

  void _timer() async {
    t = new Timer(const Duration(seconds: 1), () {
      if (time == 0) {
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
      child: new Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: new Stack(children: <Widget>[
          new Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: new RaisedButton(
                onPressed: () {
                  t.cancel();
                  _go();
                },
                child: new Text(
                  "$time",
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ),
          new Center(
            child: new Image.network(
              img,
              fit: BoxFit.fill,
            ),
          ),
        ]),
      ),
    );
  }
}
