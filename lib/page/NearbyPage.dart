import 'package:flutter/material.dart';

class NearbyPage extends StatefulWidget {
  @override
  State createState() {
    return new _NearbyPageState();
  }
}

class _NearbyPageState extends State<NearbyPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('nearby');
  }

  @override
  Widget build(BuildContext context) {
    return new Text('Nearby');
  }
}
