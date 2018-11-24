import 'package:flutter/material.dart';
import 'package:flutter_tuan/widget/picture_show.dart';

class CommunityMember extends StatelessWidget {
  final int id;
  String img = 'http://pic1.win4000.com/wallpaper/2018-01-13/5a59bb362eb18.jpg';
  String img1 =
      'http://pic1.win4000.com/wallpaper/2018-08-30/5b878eec0d4cf.jpg';

  CommunityMember(this.id);

  @override
  build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            key: Key('111'),
            slivers: <Widget>[
              new SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
            ],
          );
        },
      ),
    );
  }
}
