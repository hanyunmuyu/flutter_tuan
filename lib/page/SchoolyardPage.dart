import 'package:flutter/material.dart';

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
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541998676962&di=fd292ee5996ddf7764802d6e7ff55920&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd52a2834349b033b1c4bcdcf1fce36d3d439bde7.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542000047500&di=c28ffe4b26de835deecf00b1859a9ffa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4d086e061d950a7b9138ff1000d162d9f3d3c9d1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ScrollPhysics(),
      slivers: <Widget>[
        new SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return new Container(
                child: SchoolDetail(imgList[index]),
              );
            },
            childCount: 15,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ],
    );
  }
}

class SchoolDetail extends StatelessWidget {
  final String bgImg;

  SchoolDetail(this.bgImg);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: NetworkImage(bgImg),
          fit: BoxFit.fill
        ),
      ),
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.all(1.0),
      child: new Container(
        height: 50.0,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text(
              '河南工业大学',
              overflow: TextOverflow.ellipsis,
            ),
            new Expanded(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    label: new Text('111'),
                    textColor: Theme.of(context).primaryColor,
                  ),
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.group),
                    label: new Text(
                      '100',
                      textScaleFactor: 1.2,
                    ),
                    textColor: Theme.of(context).primaryColor,
                  ),
                  new Stack()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
