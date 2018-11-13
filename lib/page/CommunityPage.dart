import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/service/CommunityListService.dart';
import 'dart:convert';

class CommunityPage extends StatefulWidget {
  @override
  State createState() {
    return _CommunityPageState();
  }
}

class _CommunityPageState extends State<CommunityPage>
    with AutomaticKeepAliveClientMixin {
  int page = 1;
  bool isLoading = false;
  int currentPage = 1;
  int totalPage = 1;
  Store<AppState> store;
  ScrollController _scrollController = new ScrollController();
  List<Map<String, dynamic>> userCommunityList = new List();
  List<Map<String, dynamic>> communityList = new List();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollControllerLoadData);
  }

  Future<Null> _scrollControllerLoadData() async {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!isLoading) {
        _loadMore(store);
      }
    }
    if (_scrollController.position.pixels == 0) {
      _loadData(store);
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Store<AppState> store = StoreProvider.of<AppState>(context);
    _initData(store);
  }

  Future _loadData(Store store) async {
    isLoading = true;
    CommunityListService.getCommunityList(store, page).then((v) {
      if (v != null) {
        Map map = json.decode(v);
        List.from(map['data']['userCommunityList']).forEach((c) {
          userCommunityList.add(c);
        });
        List.from(map['data']['communityList']['data']).forEach((c) {
          communityList.add(c);
        });
        totalPage = map['data']['communityList']['totalPage'];
        currentPage++;
      }
      if (mounted) {
        setState(() {});
      }
    });
  }

  void _loadMore(Store store) async {
    isLoading = true;
    await _loadData(store);
  }

  Future<Null> _initData(Store store) async {
    isLoading = true;
    currentPage = 1;
    communityList.clear();
    userCommunityList.clear();
    await _loadData(store);
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        this.store = store;
        return RefreshIndicator(
            child: new CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                SliverAppBar(
                  floating: true,
                  snap: true,
                  title: new Text('SliverAppBar'),
                  backgroundColor: Theme.of(context).primaryColor,
                  expandedHeight: 200.0,
                ),
                new SliverFixedExtentList(
                  delegate: new SliverChildBuilderDelegate(
                    (context, index) => new ListTile(
                          title: new Text('$index'),
                        ),
                    childCount: 10,
                  ),
                  itemExtent: 120.0,
                ),
                new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (context, index) => new Text('$index'),
                    childCount: 10,
                  ),
                ),
                new SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverHeader(
                    maxHeight: 120.0,
                    minHeight: 60.0,
                    child: new Center(
                      child: new Text('SliverPersistentHeader'),
                    ),
                  ),
                ),
                new SliverGrid(
                  delegate: new SliverChildBuilderDelegate(
                    (context, index) => new Icon(Icons.person),
                    childCount: 20, //总个数
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, //每行个数
                  ),
                ),
              ],
            ),
            onRefresh: () => _initData(store));
      },
      converter: (store) => store,
    );
  }
}

class _SliverHeader extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverHeader({this.minHeight, this.maxHeight, this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(
      child: child,
    );
  }

  @override
  bool shouldRebuild(_SliverHeader oldDelegate) {
    return (maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child);
  }

  @override
  double get maxExtent {
    return max(maxHeight, minHeight);
  }

  @override
  double get minExtent {
    return minHeight;
  }
}
