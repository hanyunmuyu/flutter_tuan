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
      onTap: () {},
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
              List<Map<String, dynamic>> data = [
                {
                  "id": 1,
                  "name": "name1",
                  "sub": [
                    {
                      "id": 1,
                      "name": "name11111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                    {
                      "id": 2,
                      "name": "name11111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                    {
                      "id": 3,
                      "name": "name111111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                  ]
                },
                {
                  "id": 1,
                  "name": "name1",
                  "sub": [
                    {
                      "id": 1,
                      "name": "name11111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                    {
                      "id": 2,
                      "name": "name11111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                    {
                      "id": 3,
                      "name": "name111111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                  ]
                },
                {
                  "id": 1,
                  "name": "name222222222",
                  "sub": [
                    {
                      "id": 1,
                      "name": "name222222222",
                      "sub": [
                        {
                          "id": 1,
                          "name": "333333333",
                          "sub": [
                            {
                              "id": 1,
                              "name": "subname11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                    {
                      "id": 2,
                      "name": "name11111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                    {
                      "id": 3,
                      "name": "name111111",
                      "sub": [
                        {
                          "id": 1,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 2,
                          "name": "name11111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                        {
                          "id": 3,
                          "name": "name111111",
                          "sub": [
                            {
                              "id": 1,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 2,
                              "name": "name11111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                            {
                              "id": 3,
                              "name": "name111111",
                              "sub": [
                                {"id": 1, "name": "name11111"},
                                {"id": 2, "name": "name11111"},
                                {"id": 3, "name": "name111111"},
                              ]
                            },
                          ]
                        },
                      ]
                    },
                  ]
                },
              ];
              CityPicker.showCityPicker(
                context,
                data,
                selectProvince: (index) {
                  print(index);
                },
                selectCity: (index) {
                  print(index);
                },
                selectArea: (index) {
                  print(index);
                },
              );
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
