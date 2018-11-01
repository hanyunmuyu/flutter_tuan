import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('莘莘团'),
        ),
      ),
    );
  }
}
