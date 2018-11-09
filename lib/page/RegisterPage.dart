import 'package:flutter/material.dart';
import 'package:flutter_tuan/service/UserService.dart';
import 'dart:convert';

class RegisterPage extends StatefulWidget {
  @override
  State createState() {
    return new _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  String _errorPhoneMsg;
  String _errorPasswordMsg;

  void _register() async {
    if (_phoneController.text.length < 1) {
      setState(() {
        _errorPhoneMsg = '手机号不可以为空';
      });
      return;
    }

    if (_passwordController.text.length < 1) {
      setState(() {
        _errorPasswordMsg = '密码不可以为空';
      });
      return;
    }

    UserService.register(_phoneController.text, _passwordController.text)
      ..then((v) {
        Map map = json.decode(v);
        if (map['code'] == 200) {
          Navigator.of(context)
            ..pop(true)
            ..pop(true)
            ..pushReplacementNamed('/home');
        } else {
          print(map);
          setState(() {
            _errorPhoneMsg = map['msg'];
          });
        }
      });

    setState(() {
      _errorPhoneMsg = null;
      _errorPasswordMsg = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('注册'),
        ),
      ),
      body: new Center(
        child: new Container(
          margin: const EdgeInsets.symmetric(
            vertical: .0,
            horizontal: 8.0,
          ),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new TextField(
                controller: _phoneController,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.phone),
                  hintText: '请输入手机号',
                  errorText: _errorPhoneMsg,
                ),
                keyboardType: TextInputType.phone,
              ),
              new Divider(
                indent: 6,
              ),
              new TextField(
                controller: _passwordController,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.lock),
                  hintText: '请输入密码',
                  errorText: _errorPasswordMsg,
                ),
                keyboardType: TextInputType.phone,
                obscureText: true,
              ),
              new Divider(
                indent: 6,
              ),
              new RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  _register();
                },
                child: new Text('注册'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
