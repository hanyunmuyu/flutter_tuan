import 'package:flutter/material.dart';
import 'package:flutter_tuan/widget/city_picker.dart';

class SchoolActivePage extends StatefulWidget {
  @override
  State createState() {
    return new _SchoolActivePageState();
  }
}

class _SchoolActivePageState extends State<SchoolActivePage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  List<Widget> children = <Widget>[
    new Center(
      child: new Text('榜单推荐'),
    ),
    new ListTile(
      leading: new Text('相关[校园]'),
      title: new Text('1'),
      onTap: () {
      },
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
        children: <Widget>[
          new Center(
            child: new Text('榜单推荐'),
          ),
          new ListTile(
            leading: new Text('相关[校园]'),
            title: new Text('1'),
            onTap: () {
              CityPicker.showCityPicker(context);
            },
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
        ],
      ),
    );
  }
}
