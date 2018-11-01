import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  State createState() {
    return new _MessagePageState();
  }
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('消息'),
        ),
      ),
    );
  }
}
