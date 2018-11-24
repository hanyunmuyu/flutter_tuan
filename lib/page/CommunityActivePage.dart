import 'package:flutter/material.dart';

class CommunityActivePage extends StatelessWidget {
  final int id;
  final ScrollController controller;

  CommunityActivePage(this.id, this.controller);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Builder(builder: (BuildContext context) {
      return CustomScrollView(
        slivers: <Widget>[
          new SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          new SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: .0,
              horizontal: 16.0,
            ),
            sliver: new SliverFixedExtentList(
              itemExtent: 20.0,
              delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return new Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                    ),
                    child: Text('$index'),
                  );
                },
                childCount: 100,
              ),
            ),
          ),
        ],
      );
    }));
  }
}
