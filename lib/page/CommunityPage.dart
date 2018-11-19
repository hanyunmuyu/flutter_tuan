import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_tuan/service/CommunityListService.dart';
import 'dart:convert';
import 'package:flutter_tuan/service/UserService.dart';

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
      _initData(store);
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
      isLoading = false;
    });
  }

  void _loadMore(Store store) async {
    isLoading = true;
    await _loadData(store);
    if (mounted) {
      setState(() {});
    }
  }

  Future<Null> _initData(Store store) async {
    isLoading = true;
    currentPage = 1;
    communityList.clear();
    userCommunityList.clear();
    await _loadData(store);
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        this.store = store;
        return new Scaffold(
          body: RefreshIndicator(
            child: new CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                userCommunityList.length > 0
                    ? SliverAppBar(
                        floating: true,
                        snap: true,
                        title: new Text(
                          '我的关注',
                          textScaleFactor: .8,
                          style: new TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        centerTitle: true,
                        backgroundColor: Colors.white,
                        expandedHeight: 200.0,
                        flexibleSpace: new Container(
                          margin: const EdgeInsets.only(top: 30.0),
                          child: new ListView.builder(
                            itemBuilder: (context, index) {
                              return new ListTile(
                                onTap: () {
                                  print(userCommunityList[index]);
                                },
                                title: new Text(
                                    userCommunityList[index]['community_name']),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              );
                            },
                            itemCount: userCommunityList.length,
                          ),
                        ),
                      )
                    : SliverToBoxAdapter(
                        child: new Text(''),
                      ),
                communityList.length > 0
                    ? new SliverGrid(
                        delegate: new SliverChildBuilderDelegate(
                          (context, index) => new CommunityDetail(
                                store,
                                communityList[index],
                              ),
                          childCount: communityList.length, //总个数
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, //每行个数
                        ),
                      )
                    : new SliverToBoxAdapter(
                        child: new FlatButton.icon(
                          onPressed: () {
                            _initData(store);
                          },
                          icon: Icon(Icons.refresh),
                          label: new Text('重新加载'),
                        ),
                      ),
              ],
            ),
            onRefresh: () => _initData(store),
          ),
          floatingActionButton: new FloatingActionButton(
            heroTag: 'CommunityPage',
            onPressed: () {
              _scrollController.animateTo(
                .0,
                duration: const Duration(milliseconds: 600),
                curve: Curves.ease,
              );
            },
            child: new Icon(Icons.arrow_upward),
          ),
        );
      },
      converter: (store) => store,
    );
  }
}

class CommunityDetail extends StatefulWidget {
  final Map<String, dynamic> data;
  final Store store;

  CommunityDetail(this.store, this.data);

  @override
  State createState() {
    return new _CommunityDetailState();
  }
}

class _CommunityDetailState extends State<CommunityDetail> {
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
                image: new CachedNetworkImageProvider(
                  widget.data['community_logo'],
                ),
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
                  widget.data['community_name'],
                  overflow: TextOverflow.ellipsis,
                ),
                new Container(
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () {
                          UserService.payAttentionToCommunity(
                                  widget.store, widget.data['id'])
                              .then(
                            (v) {
                              Map res = json.decode(v);
                              print(res);
                              if (res['code'] == 200) {
                                setState(() {
                                  widget.data['favorite_number']++;
                                });
                              }
                              Widget snackBar = new SnackBar(
                                content: new Text(res['msg']),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            },
                          );
                        },
                        icon: Icon(Icons.favorite_border),
                        label: new Text(
                          widget.data['favorite_number'].toString(),
                          textScaleFactor: 1.2,
                        ),
                        textColor: Theme.of(context).primaryColor,
                      ),
                      FlatButton.icon(
                        onPressed: () {
                          UserService.joinInCommunity(
                                  widget.store, widget.data['id'])
                              .then(
                            (v) {
                              Map res = json.decode(v);
                              print(res);
                              if (res['code'] == 200) {
                                setState(() {
                                  widget.data['member_number']++;
                                });
                              }
                              Widget snackBar = new SnackBar(
                                content: new Text(res['msg']),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            },
                          );
                        },
                        icon: Icon(Icons.group),
                        label: new Text(
                          widget.data['member_number'].toString(),
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
