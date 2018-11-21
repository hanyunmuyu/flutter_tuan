import 'package:flutter/material.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CommunityDetailPage extends StatefulWidget {
  final Map<String, dynamic> data;

  CommunityDetailPage(this.data);

  @override
  State createState() {
    return new _CommunityDetailPageState();
  }
}

class _CommunityDetailPageState extends State<CommunityDetailPage> {
  Store<AppState> store;
  bool isMounted = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!isMounted) {
      store = StoreProvider.of<AppState>(context);
    }
  }

  Future<Null> _initData(Store store) async {}

  List _data = List.generate(100, (i) => i);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        return new Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  child: SliverAppBar(
                    title: new Text(widget.data['community_name'].toString()),
                    textTheme: Theme.of(context).textTheme,
                    iconTheme: Theme.of(context).iconTheme,
                    pinned: true,
                    centerTitle: true,
                    backgroundColor: Colors.white,
                    expandedHeight: 180.0,
                    forceElevated: innerBoxIsScrolled,
                    flexibleSpace: Container(
                      height: 260.0,
                      child: new Text(
                        '22222222',
                        style: new TextStyle(color: Colors.red),
                      ),
                    ),
                    bottom: PreferredSize(
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              child: new Text('关注'),
                              textColor: Colors.white,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          new Divider(
                            indent: 4,
                          ),
                          new Expanded(
                            child: OutlineButton(
                              onPressed: () {},
                              child: new Text('加入'),
                              textColor: Theme.of(context).primaryColor,
                              borderSide: new BorderSide(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      preferredSize: new Size(double.infinity, 80.0),
                    ),
                    actions: <Widget>[
                      IconButton(icon: Icon(Icons.search), onPressed: () {})
                    ],
                  ),
                ),
              ];
            },
            body: new SafeArea(
              top: true,
              bottom: true,
              child: Builder(
                builder: (BuildContext context) {
                  return new CustomScrollView(
                    slivers: <Widget>[
                      new SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                      ),
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Container(
                                child: new CachedNetworkImage(
                                  imageUrl: 'http://192.168.1.66:88/img/b.jpg',
                                ),
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 1.0),
                              ),
                          childCount: _data.length,
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
      converter: (store) => store,
    );
  }
}
