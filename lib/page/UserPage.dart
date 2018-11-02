import 'package:flutter/material.dart';
import 'UserInfo.dart';
import 'LoginPage.dart';
import 'package:flutter_tuan/tool/Storage.dart';

class UserPage extends StatefulWidget {
  @override
  State createState() {
    return new _UserPageState();
  }
}

class _UserPageState extends State<UserPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkToken();
  }

  void _checkToken() async {
    Storage.read('token').then((token) {
      if (token != null) {
        Storage.delete('token');
      } else {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return new LoginPage();
        }));
        Storage.write('token', '11111111');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('我的'),
        ),
      ),
      body: new Container(
        margin: const EdgeInsets.all(6.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new ListTile(
              title: new Row(
                children: <Widget>[
                  new CircleAvatar(
                    backgroundImage: new NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541084531572&di=aa88493fe1d2ccfaa64624e83a9982b4&imgtype=0&src=http%3A%2F%2Fimg2.ph.126.net%2Fh_RN2JNiE7CSsFOnmwwgkA%3D%3D%2F2847963814375925996.jpg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                  ),
                  new Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                      '寒云',
                      textScaleFactor: 1.2,
                    ),
                  )
                ],
              ),
              subtitle: new Text(
                ' 故天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能',
                style: new TextStyle(),
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return new UserInfo();
                }));
              },
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Expanded(
                  child: new ListTile(
                    title: new Text(
                      '11',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: new Text(
                      '粉丝',
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      print(111);
                    },
                  ),
                ),
                new Expanded(
                  child: new ListTile(
                    title: new Text(
                      '111',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: new Text(
                      '关注',
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      print(111);
                    },
                  ),
                ),
                new Expanded(
                  child: new ListTile(
                    title: new Text(
                      '11',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: new Text(
                      '社团',
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      print(111);
                    },
                  ),
                ),
                new Expanded(
                  child: new ListTile(
                    title: new Text(
                      '11',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: new Text(
                      '校园',
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      print(111);
                    },
                  ),
                ),
              ],
            ),
            new Expanded(
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.face),
                    title: new Text('111'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}