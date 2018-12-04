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
  ScrollController _controller;
  Map<String, dynamic> communityDetail = new Map();
  double _top = 0.0;

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
    _top = 200.0;
    _tabController = new TabController(
      length: myTabs.length,
      initialIndex: 1,
      vsync: this,
    );
    _controller = ScrollController();
    _controller.addListener(() {
      print(_controller.position.pixels);
      setState(() {
        _top = _controller.position.pixels;
      });
    });
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

  PopupMenuItem<String> _buildMenuItem(IconData icon, String label) {
    return PopupMenuItem<String>(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(icon, color: Theme.of(context).primaryColor),
          ),
          Text(
            label,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        return Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
              child: TabBar(
                controller: _tabController,
                tabs: myTabs,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                labelStyle: new TextStyle(fontSize: 16.0),
                unselectedLabelStyle: new TextStyle(fontSize: 12.0),
              ),
              preferredSize: Size(double.infinity, 20.0),
            ),
            title: Text(
              widget.data['community_name'],
              overflow: TextOverflow.ellipsis,
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              PopupMenuButton<String>(
                onSelected: (String item) {},
                itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                      _buildMenuItem(Icons.share, '分享'),
                      _buildMenuItem(Icons.favorite_border, '关注'),
                      _buildMenuItem(Icons.email, '留言'),
                      _buildMenuItem(Icons.not_interested, '举报'),
                    ],
                icon: Icon(Icons.more_vert),
              ),
            ],
          ),
          body: Stack(
            children: <Widget>[
              TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Container(
                    child: CommunityActivePage(1, _controller),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        showDialog<Null>(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext c) => Material(
                                type: MaterialType.transparency,
                                child: Center(
                                  child: Container(
                                    child: SizedBox(
                                      child: CircularProgressIndicator(),
                                      width: 10.0,
                                      height: 10.0,
                                    ),
                                    width: 120.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) =>
                          ListTile(
                            title: Text('$index'),
                          ),
                      itemCount: 20,
                    ),
                  ),
                  Container(child: CommunityMember(100)),
                ],
              ),
            ],
          ),
        );
      },
      converter: (store) => store,
    );
  }
}
