import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CommunityActivePage extends StatelessWidget {
  final int id;
  final ScrollController controller;

  CommunityActivePage(this.id, this.controller);

  Widget _detail() {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(2.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 10.0,
                  backgroundImage: CachedNetworkImageProvider(
                    'http://192.168.1.66:88/img/b.jpg',
                  ),
                ),
                Text(
                  '我是一只小小鸟',
                  textScaleFactor: 1.3,
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.all(1.0)),
            Text(
              '注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Padding(padding: const EdgeInsets.all(1.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite_border,
                      size: 18,
                    ),
                    Text('100'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.chat,
                      size: 18,
                    ),
                    Text('100'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.visibility,
                      size: 18,
                    ),
                    Text('l11'),
                  ],
                ),
              ],
            ),
            Divider()
          ],
        ),
      ),
      onTap: () {
        print(1);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (BuildContext context) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) => _detail(),
            itemCount: 20,
          );
        },
      ),
    );
  }
}
