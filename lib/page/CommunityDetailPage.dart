import 'package:flutter/material.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_tuan/page/CommunityActivePage.dart';

class CommunityDetailPage extends StatefulWidget {
  final Map<String, dynamic> data;

  CommunityDetailPage(this.data);

  @override
  State createState() {
    return new _CommunityDetailPageState();
  }
}

class _CommunityDetailPageState extends State<CommunityDetailPage>
    with TickerProviderStateMixin {
  Store<AppState> store;
  bool isMounted = false;
  int defaultIndex = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!isMounted) {
      store = StoreProvider.of<AppState>(context);
    }
  }

  TabController _tabController;
  final List<Tab> myTabs = <Tab>[
    new Tab(
      text: '最新动态',
    ),
    new Tab(
      text: '热门动态',
    ),
    new Tab(
      text: '历史活动',
    ),
    new Tab(
      text: '成员',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(length: myTabs.length, initialIndex: 1, vsync: this)
          ..addListener(() {
            setState(() {
              defaultIndex = _tabController.index;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Text(widget.data['community_name'].toString()),
            centerTitle: true,
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              new SliverToBoxAdapter(
                child: new Container(
                  child: Column(
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Expanded(
                            child: CachedNetworkImage(
                              imageUrl:
                                  widget.data['community_logo'].toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  new Text('111'),
                                  new Text('111'),
                                  new Text('111'),
                                  new Text('111'),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              margin: const EdgeInsets.only(left: 4.0),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: OutlineButton(
                              onPressed: () {},
                              child: new Text('已经关注 | 1024'),
                              borderSide: new BorderSide(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          Divider(
                            indent: 2,
                          ),
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              child: new Text('加入'),
                              color: Theme.of(context).primaryColor,
                              textColor: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: const EdgeInsets.all(2.0),
                ),
              ),
              new SliverToBoxAdapter(
                child: Align(
                  child: TabBar(
                    key: Key(widget.data.toString()),
                    tabs: myTabs,
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Theme.of(context).primaryColor,
                    labelStyle: new TextStyle(fontSize: 16.0),
                    unselectedLabelStyle: new TextStyle(fontSize: 12.0),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              new SliverFixedExtentList(
                delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ListTile(
                      title: new Text('$index'),
                    );
                  },
                  childCount: 20 + defaultIndex,
                ),
                itemExtent: 60,
              ),
            ],
          ),
        );
      },
      converter: (store) => store,
    );
  }
}
