import 'package:flutter/material.dart';

class SchoolPage extends StatefulWidget {
  @override
  State createState() {
    return new _SchoolPageState();
  }
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('高校'),
        ),
      ),
      body: new Text('SchoolPage'),
    );
  }
}
