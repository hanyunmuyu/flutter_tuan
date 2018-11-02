import 'package:flutter/material.dart';

class FollowPage extends StatefulWidget {
  @override
  State createState() {
    return new _FollowPageState();
  }
}

class _FollowPageState extends State<FollowPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return new Text('FollowPage');
  }
}
