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

  @override
  Widget build(BuildContext context) {
    return new Text('schoolyard');
  }
}
