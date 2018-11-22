import 'package:flutter/material.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_tuan/page/CommunityActivePage.dart';
import 'package:flutter_tuan/page/CommunityMember.dart';

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
    _tabController = new TabController(
      length: myTabs.length,
      initialIndex: 1,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Text(widget.data['community_name'].toString()),
            centerTitle: true,
            actions: <Widget>[],
          ),
          body: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Expanded(
                          child: CachedNetworkImage(
                            imageUrl: widget.data['community_logo'].toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                new Text('成员：100 关注：1000'),
                                new Text('分类：体育、交友'),
                                new Row(
                                  children: <Widget>[
                                    new Text('院校:'),
                                    FlatButton(
                                      onPressed: () {},
                                      child: new Text('河南工业大学'),
                                    )
                                  ],
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            margin: const EdgeInsets.only(left: 8.0),
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
              Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Row(
                  children: <Widget>[
                    TabBar(
                      tabs: myTabs,
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: Theme.of(context).primaryColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: new TextStyle(fontSize: 16.0),
                      unselectedLabelStyle: new TextStyle(fontSize: 12.0),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 200.0),
                width: double.infinity,
                child: TabBarView(
                  children: <Widget>[
                    CommunityActivePage(),
                    CommunityActivePage(),
                    CommunityActivePage(),
                    CommunityMember(),
                  ],
                  controller: _tabController,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        );
      },
      converter: (store) => store,
    );
  }
}
