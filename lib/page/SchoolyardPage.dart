import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_tuan/service/SchoolService.dart';
import 'dart:convert';

class SchoolyardPage extends StatefulWidget {
  @override
  State createState() {
    return new _SchoolyardPageState();
  }
}

class _SchoolyardPageState extends State<SchoolyardPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  ScrollController _scrollController = new ScrollController();
  List<Map<String, dynamic>> schoolList = new List();
  bool isLoading = false;
  int currentPage = 1;
  int totalPage = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (!isLoading) {
          _loadMore();
        }
      }
      if (_scrollController.position.pixels == 0) {
        _initData();
      }
    });
  }

  void _initData() async {
    isLoading = true;
    currentPage = 1;
    schoolList.clear();
    _loadData();
    isLoading = false;
  }

  void _loadData() async {
    isLoading = true;
    if (totalPage >= currentPage) {
      SchoolService.getSchoolList(currentPage).then((v) {
        if (v != null) {
          Map map = json.decode(v);
          totalPage = map['data']['totalPage'];
          List.from(map['data']['data']).forEach((v) {
            schoolList.add(v);
          });
          currentPage++;
        }
        setState(() {});
      });
    }
    isLoading = false;
  }

  void _loadMore() async {
    isLoading = true;
    _loadData();
    setState(() {});
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      physics: ScrollPhysics(),
      slivers: <Widget>[
        new SliverAppBar(
          title: new Text(
            '热门高校',
            softWrap: true,
            style: new TextStyle(color: Theme.of(context).primaryColor),
            textScaleFactor: .8,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          expandedHeight: 160.0,
          flexibleSpace: new Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: new ListView.builder(
              itemBuilder: (context, index) {
                return new ListTile(
                  onTap: () {
                    print(111);
                  },
                  title: new Text('河南工业大学-' + '$index'),
                );
              },
              itemCount: 16,
            ),
          ),
        ),
        schoolList.length > 0
            ? new SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return new Container(
                      child: SchoolDetail(schoolList[index]),
                    );
                  },
                  childCount: schoolList.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              )
            : new SliverToBoxAdapter(
                child: new Center(
                  child: new FlatButton.icon(
                    onPressed: () {
                      _initData();
                    },
                    icon: Icon(Icons.refresh),
                    label: new Text('重新加载'),
                  ),
                ),
              ),
      ],
    );
  }
}

class SchoolDetail extends StatefulWidget {
  final Map<String, dynamic> data;

  SchoolDetail(this.data);

  @override
  State createState() {
    return new _SchoolDetailState();
  }
}

class _SchoolDetailState extends State<SchoolDetail> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print(widget.data);
      },
      child: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image:
                    new CachedNetworkImageProvider(widget.data['school_logo']),
                fit: BoxFit.fill,
              ),
            ),
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.all(1.0),
            width: double.infinity,
          ),
          new Container(
            color: Colors.white,
            alignment: Alignment.bottomCenter,
            height: 70.0,
            width: double.infinity,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  widget.data['school_name'] +
                      '--' +
                      widget.data['id'].toString(),
                  overflow: TextOverflow.ellipsis,
                ),
                new Container(
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () {
                          setState(() {
                            widget.data['favorite_number']++;
                          });
                        },
                        icon: Icon(Icons.favorite_border),
                        label: new Text(
                          widget.data['favoriteNumber'].toString(),
                          textScaleFactor: 1.2,
                        ),
                        textColor: Theme.of(context).primaryColor,
                      ),
                      FlatButton.icon(
                        onPressed: () {
                          setState(() {
                            widget.data['member_number']++;
                          });
                        },
                        icon: Icon(Icons.group),
                        label: new Text(
                          widget.data['memberNumber'].toString(),
                          textScaleFactor: 1.2,
                        ),
                        textColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
