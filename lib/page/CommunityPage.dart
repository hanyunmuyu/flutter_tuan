import 'package:flutter/material.dart';
import 'dart:math';

class CommunityPage extends StatefulWidget {
  @override
  State createState() {
    return _CommunityPageState();
  }
}

class _CommunityPageState extends State<CommunityPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return new CustomScrollView(
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
