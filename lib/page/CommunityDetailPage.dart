import 'package:flutter/material.dart';
import 'package:flutter_tuan/common/redux/AppState.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';

class CommunityDetailPage extends StatefulWidget {
  @override
  State createState() {
    return new _CommunityDetailPageState();
  }
}

class _CommunityDetailPageState extends State<CommunityDetailPage> {
  Store<AppState> store;
  ScrollController _controller = new ScrollController();

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    store = StoreProvider.of<AppState>(context);
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
                    title: const Text('社团啊啊啊'),
                    pinned: true,
                    centerTitle: true,
                    expandedHeight: 180.0,
                    forceElevated: innerBoxIsScrolled,
                    flexibleSpace: Container(
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new CachedNetworkImageProvider(
                            'http://192.168.1.66:88/img/b.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: new Text(
                        '111111111111111',
                        style: new TextStyle(color: Colors.red),
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                    bottom: PreferredSize(
                      child: new Text('111'),
                      preferredSize: new Size(double.infinity, 60.0),
                    ),
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
