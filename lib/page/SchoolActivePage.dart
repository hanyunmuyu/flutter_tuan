import 'package:flutter/material.dart';

class SchoolActivePage extends StatelessWidget {
  List<Widget> children = <Widget>[
    new Center(
      child: new Text('榜单推荐'),
    ),
    new ListTile(
      leading: new Text('相关[校园]'),
      title: new Text('1'),
    ),
    new ListTile(
      leading: new Text('相关[社团]'),
      title: new Text('1'),
    ),
    new ListTile(
      leading: new Text('热门[校园]'),
      title: new Text('1'),
    ),
    new ListTile(
      leading: new Text('热门[国内]'),
      title: new Text('1'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      child: new Column(
        children: children,
      ),
    );
  }
}
