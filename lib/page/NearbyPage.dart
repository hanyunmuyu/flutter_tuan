import 'package:flutter/material.dart';

class NearbyPage extends StatefulWidget {
  @override
  State createState() {
    return new _NearbyPageState();
  }
}

class _NearbyPageState extends State<NearbyPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return new Text('Nearby');
  }
}
