import 'package:flutter/material.dart';
import 'package:flutter_tuan/service/UserService.dart';

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
        child: new Center(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () {
              UserService.logout(context);
            },
            child: new Text('退出'),
          ),
        ),
      ),
    );
  }
}
