import 'package:flutter/material.dart';
import 'RegisterPage.dart';
import 'package:flutter_tuan/service/UserService.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:flutter_tuan/service/UserService.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  String _errorPhoneMsg;
  String _errorPasswordMsg;

  bool _isChinaPhoneLegal(String str) {
    return new RegExp(
            '^((13[0-9])|(15[^4])|(166)|(17[0-8])|(18[0-9])|(19[8-9])|(147,145))\\d{8}\$')
        .hasMatch(str);
  }

  void _login(store) async {
    if (_phoneController.text.length < 1 ||
        !_isChinaPhoneLegal(_phoneController.text)) {
      setState(() {
        _errorPhoneMsg = '手机号不可以为空';
      });
      return;
    }
    if (_passwordController.text.length < 6) {
      setState(() {
        _errorPasswordMsg = '密码不可以小于六位';
      });
      return;
    }
    setState(() {
      _errorPasswordMsg = null;
      _errorPhoneMsg = null;
    });
    UserService.doLogin({
      "mobile": _phoneController.text.trim(),
      "password": _passwordController.text.trim()
    }, store)
        .then((v) {
      Navigator.of(context)
        ..pop(true)
        ..pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new StoreBuilder<AppState>(
      builder: (context, store) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Center(
              child: new Text('登录/注册'),
            ),
          ),
          body: new Center(
            child: new Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: .0,
              ),
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: '请输入手机号',
                        icon: new Icon(
                          Icons.phone,
                        ),
                        errorText: _errorPhoneMsg,
                      ),
                      keyboardType: TextInputType.phone,
                      controller: _phoneController,
                    ),
                    new Divider(
                      indent: 6,
                    ),
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: '请输入密码',
                        icon: new Icon(
                          Icons.lock,
                        ),
                        errorText: _errorPasswordMsg,
                      ),
                      obscureText: true,
                      controller: _passwordController,
                    ),
                    new Divider(
                      indent: 6,
                    ),
                    new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new FlatButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            _login(store);
                          },
                          child: new Text(
                            '登录',
                          ),
                        ),
                        new Divider(
                          indent: 6,
                        ),
                        new FlatButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(builder: (_) {
                                return new RegisterPage();
                              }),
                            );
                          },
                          child: new Text(
                            '注册',
                          ),
                        ),
                      ],
                    ),
                    new FlatButton(
                      onPressed: () {},
                      child: new Text(
                        '忘记密码？',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
