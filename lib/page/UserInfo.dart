import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:flutter_tuan/widget/city_picker.dart';

class UserInfo extends StatefulWidget {
  @override
  State createState() {
    return new _UserInfoState();
  }
}

class _UserInfoState extends State<UserInfo> {
  Map<String, dynamic> province, city, area;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new StoreConnector<AppState, Store>(
          builder: (context, store) {
            List<Widget> _allPage = <Widget>[
              Container(
                alignment: Alignment.center,
                child: new GestureDetector(
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Expanded(
                        flex: 7,
                        child: new Text(
                          store.state.user.data['motto'],
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      new Expanded(
                        child: new Icon(Icons.edit),
                      ),
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
                        child: new Text(store.state.user.data['name']),
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
                        child: new Text(store.state.user.data['birth_day']),
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
                        child: new Text(
                          store.state.user.data['school']
                                  .containsKey('school_name')
                              ? store.state.user.data['school']['school_name']
                              : '',
                        ),
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
                        child: new Text(
                          store.state.user.data['grade'].toString(),
                        ),
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
                        child: new Text(
                          (store.state.user.data['province'].containsKey('name')
                                  ? store.state.user.data['province']['name']
                                  : "") +
                              '-' +
                              (store.state.user.data['city'].containsKey('name')
                                  ? store.state.user.data['city']['name']
                                  : '') +
                              '-' +
                              (store.state.user.data['area'].containsKey('name')
                                  ? store.state.user.data['area']['name']
                                  : ''),
                        ),
                      ),
                    )
                  ],
                ),
                trailing: new Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  CityPicker.showCityPicker(
                    context,
                    selectProvince: (province) {
                      print(province);
                    },
                    selectCity: (city) {
                      print(city);
                    },
                    selectArea: (area) {
                      print(area);
                    },
                  );
                },
              ),
            ];
            return new NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    child: new SliverAppBar(
                      pinned: true,
                      leading: new IconButton(
                        icon: new Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop({"name": "hanyun"});
                        },
                      ),
                      backgroundColor: Colors.white,
                      expandedHeight: 300.0,
                      forceElevated: innerBoxIsScrolled,
                      flexibleSpace: new Container(
                        child: new Column(
                          children: <Widget>[
                            new AppBar(
                              title: new Center(
                                child: new Text('个人中心'),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Image.network(
                                  store.state.user.data['bg'],
                                  fit: BoxFit.cover,
                                ),
                                width: double.infinity,
                                height: 200.0,
                                margin: const EdgeInsets.only(bottom: 40.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      bottom: PreferredSize(
                        child: new CircleAvatar(
                          radius: 40.0,
                          backgroundImage:
                              new NetworkImage(store.state.user.data['avatar']),
                        ),
                        preferredSize: new Size(double.infinity, 80.0),
                      ),
                    ),
                  ),
                ];
              },
              body: new SafeArea(
                top: false,
                bottom: false,
                child: new Builder(builder: (BuildContext context) {
                  return new CustomScrollView(
                    slivers: <Widget>[
                      new SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                      ),
                      new SliverPadding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        sliver: new SliverFixedExtentList(
                          delegate: new SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return _allPage[index];
                            },
                            childCount: _allPage.length,
                          ),
                          itemExtent: 60,
                        ),
                      )
                    ],
                  );
                }),
              ),
            );
          },
          converter: (store) => store),
    );
  }
}
