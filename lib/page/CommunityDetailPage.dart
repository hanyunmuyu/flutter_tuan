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

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Store>(
      builder: (context, store) {
        return new Scaffold(
          body: RefreshIndicator(
            child: new CustomScrollView(
              controller: _controller,
              slivers: <Widget>[
                new SliverAppBar(
                  iconTheme: Theme.of(context).iconTheme,
                  title: new Text('111'),
                  textTheme: Theme.of(context).primaryTextTheme,
                  centerTitle: true,
                  expandedHeight: 300.0,
                  flexibleSpace: new Container(
                    child: new Column(
                      children: <Widget>[
                        new Expanded(
                          flex: 1,
                          child: new Container(
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new CachedNetworkImageProvider(
                                  store.state.user.data['bg'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            onRefresh: () => _initData(store),
          ),
        );
      },
      converter: (store) => store,
    );
  }
}
