import 'package:flutter/material.dart';
import 'dart:math';

class SchoolyardPage extends StatefulWidget {
  @override
  State createState() {
    return new _SchoolyardPageState();
  }
}

class _SchoolyardPageState extends State<SchoolyardPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  List<String> imgList = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000298372&di=fc3d1772b1cd7ecf9712c088895c9f50&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dshijue1%252C0%252C0%252C294%252C40%2Fsign%3Df5f84b07e1c4b7452099bf55a7957462%2F42a98226cffc1e17752f411f4090f603738de909.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
  ];
  ScrollController _scrollController = new ScrollController();
  List<Map<String, dynamic>> schoolList = new List();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (!isLoading) {
          _loadMore();
        }
      }
      if (_scrollController.position.pixels == 0) {
        _initData();
      }
    });
  }

  void _initData() async {
    isLoading = true;
    schoolList.clear();
    _loadData();
    isLoading = false;
  }

  void _loadData() async {
    isLoading = true;
    for (int i = 0; i < 18; i++) {
      Map<String, dynamic> map = {
        "title": "河南工业大学",
        "img": imgList[i],
        "id": schoolList.length,
        "favoriteNumber": i * 10,
        "memberNumber": i * 20
      };
      schoolList.add(map);
    }
    isLoading = false;
  }

  void _loadMore() async {
    isLoading = true;
    _loadData();
    setState(() {});
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      physics: ScrollPhysics(),
      slivers: <Widget>[
        new SliverAppBar(
          title: new Text(
            '热门高校',
            softWrap: true,
            style: new TextStyle(color: Theme.of(context).primaryColor),
            textScaleFactor: .8,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          expandedHeight: 160.0,
          flexibleSpace: new Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: new ListView.builder(
              itemBuilder: (context, index) {
                return new ListTile(
                  onTap: () {
                    print(111);
                  },
                  title: new Text('河南工业大学-' + '$index'),
                );
              },
              itemCount: 16,
            ),
          ),
        ),
        new SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return new Container(
                child: SchoolDetail(schoolList[index]),
              );
            },
            childCount: schoolList.length,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ],
    );
  }
}

class SchoolDetail extends StatefulWidget {
  final Map<String, dynamic> data;

  SchoolDetail(this.data);

  @override
  State createState() {
    return new _SchoolDetailState();
  }
}

class _SchoolDetailState extends State<SchoolDetail> {
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
                  image: NetworkImage(widget.data['img']), fit: BoxFit.fill),
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
                  widget.data['title'] + widget.data['id'].toString(),
                  overflow: TextOverflow.ellipsis,
                ),
                new Container(
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () {
                          setState(() {
                            widget.data['favoriteNumber']++;
                          });
                        },
                        icon: Icon(Icons.favorite_border),
                        label: new Text(
                          widget.data['favoriteNumber'].toString(),
                          textScaleFactor: 1.2,
                        ),
                        textColor: Theme.of(context).primaryColor,
                      ),
                      FlatButton.icon(
                        onPressed: () {
                          setState(() {
                            widget.data['memberNumber']++;
                          });
                        },
                        icon: Icon(Icons.group),
                        label: new Text(
                          widget.data['memberNumber'].toString(),
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
