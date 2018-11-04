import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class UserInfo extends StatefulWidget {
  @override
  State createState() {
    return new _UserInfoState();
  }
}

class _UserInfoState extends State<UserInfo> {
  String _backgroundImg =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541084531572&di=aa88493fe1d2ccfaa64624e83a9982b4&imgtype=0&src=http%3A%2F%2Fimg2.ph.126.net%2Fh_RN2JNiE7CSsFOnmwwgkA%3D%3D%2F2847963814375925996.jpg';
  String _avatarImg =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541084531572&di=aa88493fe1d2ccfaa64624e83a9982b4&imgtype=0&src=http%3A%2F%2Fimg2.ph.126.net%2Fh_RN2JNiE7CSsFOnmwwgkA%3D%3D%2F2847963814375925996.jpg';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('个人信息'),
        ),
      ),
      body: new Container(
        child: new ListView(children: <Widget>[
          new UserAvatarWithBackgroundImage(
            backgroundImg: _backgroundImg,
            avatarImg: _avatarImg,
          ),
          Container(
            alignment: Alignment.center,
            child: new GestureDetector(
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text(
                      "故天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  new Icon(Icons.edit)
                ],
              ),
              onTap: () {
                print(111);
              },
            ),
            padding: const EdgeInsets.all(8.0),
          ),
          new ListTile(
            title: new Row(
              children: <Widget>[
                new Text('昵称'),
                new Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: new Text('寒云'),
                  ),
                )
              ],
            ),
            trailing: new Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          new ListTile(
            title: new Row(
              children: <Widget>[
                new Text('生日'),
                new Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: new Text('1989-03-18'),
                  ),
                )
              ],
            ),
            trailing: new Icon(Icons.keyboard_arrow_right),
            onTap: () {
              DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                locale: 'zh',
                minYear: 1970,
                maxYear: new DateTime.now().year,
                initialYear: new DateTime.now().year,
                initialMonth: 6,
                initialDate: 21,
                dateFormat: 'yyyy-mm-dd',
                onChanged: (year, month, date) {},
                onConfirm: (year, month, date) {
                  print(year);
                },
              );
            },
          ),
          new ListTile(
            title: new Row(
              children: <Widget>[
                new Text('学校'),
                new Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: new Text('河南工业大学'),
                  ),
                )
              ],
            ),
            trailing: new Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          new ListTile(
            title: new Row(
              children: <Widget>[
                new Text('入学年份'),
                new Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: new Text('2010'),
                  ),
                )
              ],
            ),
            trailing: new Icon(Icons.keyboard_arrow_right),
            onTap: () {
              DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                locale: 'zh',
                minYear: 1970,
                maxYear: new DateTime.now().year,
                initialYear: new DateTime.now().year,
                initialMonth: 6,
                initialDate: 21,
                dateFormat: 'yyyy',
                onChanged: (year, month, date) {},
                onConfirm: (year, month, date) {
                  print(year);
                },
              );
            },
          ),
          new ListTile(
            title: new Row(
              children: <Widget>[
                new Text('故乡'),
                new Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: new Text('河南-许昌'),
                  ),
                )
              ],
            ),
            trailing: new Icon(Icons.keyboard_arrow_right),
            onTap: () {
              showModalBottomSheet<Null>(
                context: context,
                builder: (BuildContext context) {
                  return new Container(
                    child: new Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: new ListView.builder(
                        itemBuilder: (context, index) {
                          return new Text('河南省');
                        },
                        itemCount: 200,
                      ),
                    ),
                  );
                },
              );
            },
          ),
          new ListTile(
            title: new Row(
              children: <Widget>[
                new Text('专业'),
                new Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: new Text('经济学'),
                  ),
                )
              ],
            ),
            trailing: new Icon(Icons.keyboard_arrow_right),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => new AlertDialog(
                  title: new Text(""),
                  content: new Text('aaaaaaa'),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("取消"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    new FlatButton(
                      child: new Text("确定"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ],
        ),
      ),
    );
  }
}

class UserAvatarWithBackgroundImage extends StatefulWidget {
  final String backgroundImg;
  final double backgroundHeight;
  final String avatarImg;
  final double avatarHeight;

  UserAvatarWithBackgroundImage({
    this.backgroundImg,
    this.backgroundHeight = 200.0,
    this.avatarImg,
    this.avatarHeight = 40.0,
  });

  @override
  State createState() {
    return new _UserAvatarWithBackgroundImageState();
  }
}

class _UserAvatarWithBackgroundImageState
    extends State<UserAvatarWithBackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new NetworkImage(widget.backgroundImg),
                  fit: BoxFit.cover),
            ),
            height: widget.backgroundHeight,
          ),
          new Align(
            alignment: Alignment.bottomCenter,
            child: new CircleAvatar(
              backgroundImage: new NetworkImage(widget.avatarImg),
              radius: widget.avatarHeight,
            ),
          )
        ],
      ),
      height: widget.backgroundHeight + widget.avatarHeight,
    );
  }
}
