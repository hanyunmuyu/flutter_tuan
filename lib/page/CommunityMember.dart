import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CommunityMember extends StatelessWidget {
  final int id;

  CommunityMember(this.id);

  @override
  build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            key: Key('111'),
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(6.0),
                sliver: SliverToBoxAdapter(
                  child: Text('管理员(5)'),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(
                              'http://old.bz55.com/uploads/allimg/150422/139-1504221GZ3.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text('寒云'),
                          ),
                        ],
                      );
                    },
                    childCount: 6,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(6.0),
                sliver: SliverToBoxAdapter(
                  child: Text('关注的人(5)'),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(
                              'http://old.bz55.com/uploads/allimg/150422/139-1504221GZ3.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text('寒云'),
                          ),
                        ],
                      );
                    },
                    childCount: 66,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
