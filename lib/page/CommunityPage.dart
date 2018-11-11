import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: new Text('SliverAppBar'),
          backgroundColor: Theme.of(context).primaryColor,
          expandedHeight: 200.0,
          floating: true,
          snap: true,
        ),
        new SliverFixedExtentList(
            delegate: new SliverChildBuilderDelegate(
              (context, index) => new ListTile(
                    title: new Text('$index'),
                  ),
              childCount: 10,
            ),
            itemExtent: 120.0)
      ],
    );
  }
}
