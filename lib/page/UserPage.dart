import 'package:flutter/material.dart';
import 'UserInfo.dart';

class UserPage extends StatefulWidget {
  @override
  State createState() {
    return new _UserPageState();
  }
}

class _UserPageState extends State<UserPage> {
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
          children: <Widget>[
            new GestureDetector(
              child: new Container(
                child: new Row(
                  children: <Widget>[
                    new CircleAvatar(
                      backgroundImage: new NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541084531572&di=aa88493fe1d2ccfaa64624e83a9982b4&imgtype=0&src=http%3A%2F%2Fimg2.ph.126.net%2Fh_RN2JNiE7CSsFOnmwwgkA%3D%3D%2F2847963814375925996.jpg',
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              '寒云',
                              textScaleFactor: 1.2,
                            ),
                            new Text(
                              '一种相思，两处闲愁',
                              textScaleFactor: .9,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return new UserInfo();
                }));
              },
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
