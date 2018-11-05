import 'package:flutter/material.dart';
import 'RegisterPage.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  void _login() async {
    if (_phoneController.text.length < 1) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: new Text('手机号不可以为空'),
            ),
      );
      return;
    }
    if (_passwordController.text.length < 1) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: new Text('密码不可以为空'),
            ),
      );
    }
    Navigator.pushReplacementNamed(context, '/home');

  }

  @override
  Widget build(BuildContext context) {
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
                        _login();
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
  }
}
