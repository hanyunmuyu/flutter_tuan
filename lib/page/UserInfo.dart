import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  @override
  State createState() {
    return new _UserInfoState();
  }
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                image: new DecorationImage(
                    image: new NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541084531572&di=aa88493fe1d2ccfaa64624e83a9982b4&imgtype=0&src=http%3A%2F%2Fimg2.ph.126.net%2Fh_RN2JNiE7CSsFOnmwwgkA%3D%3D%2F2847963814375925996.jpg'),
                    fit: BoxFit.cover),
              ),
              height: 200.0,
              child: new Container(
                alignment: Alignment.bottomCenter,
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541084531572&di=aa88493fe1d2ccfaa64624e83a9982b4&imgtype=0&src=http%3A%2F%2Fimg2.ph.126.net%2Fh_RN2JNiE7CSsFOnmwwgkA%3D%3D%2F2847963814375925996.jpg'),
                  radius: 40.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
