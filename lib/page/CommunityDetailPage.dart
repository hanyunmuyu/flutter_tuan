import 'package:flutter/material.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_tuan/page/CommunityActivePage.dart';
import 'package:flutter_tuan/page/CommunityMember.dart';
import 'package:flutter_tuan/service/CommunityDetailService.dart';

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

  Map<String, dynamic> communityDetail = new Map();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!isMounted) {
      store = StoreProvider.of<AppState>(context);
      _init(store);
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

  void _init(Store store) async {
    print(widget.data['id']);
    CommunityDetailService.getCommunityDetail(store, context, widget.data['id'])
        .then(
      (v) {
        communityDetail = v.data;
        setState(() {});
      },
    );
  }

  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        return new Scaffold(
          body: NestedScrollView(
            controller: _controller,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                new SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  child: new SliverAppBar(
                    pinned: true,
                    expandedHeight: 300.0,
                    // 这个高度必须比flexibleSpace高度大
                    title: new Text(widget.data['community_name'].toString()),
                    centerTitle: true,
                    forceElevated: innerBoxIsScrolled,
                    bottom: PreferredSize(
                        child: new Container(
                          child: TabBar(
                            controller: _tabController,
                            tabs: myTabs,
                            isScrollable: true,
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Colors.white,
                            labelStyle: new TextStyle(fontSize: 16.0),
                            unselectedLabelStyle: new TextStyle(fontSize: 12.0),
                          ),
                        ),
                        preferredSize: new Size(double.infinity, 46.0)),
                    // 46.0为TabBar的高度，也就是tabs.dart中的_kTabHeight值，因为flutter不支持反射所以暂时没法通过代码获取
                    flexibleSpace: new Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://pic1.win4000.com/wallpaper/2018-08-30/5b878eec0d4cf.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: const EdgeInsets.only(bottom: 46.0),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              key: ObjectKey('SchoolPage111'),
              controller: _tabController,
              children: <Widget>[
                CommunityActivePage(widget.data['id'], _controller),
                CommunityActivePage(widget.data['id'], _controller),
                CommunityActivePage(widget.data['id'], _controller),
                CommunityMember(widget.data['id']),
              ],
            ),
          ),
        );
      },
      converter: (store) => store,
    );
  }
}
