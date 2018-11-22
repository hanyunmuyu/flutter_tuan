import 'package:flutter/material.dart';

class CommunityActivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => Text('$index'),
        itemCount: 100,
      ),
    );
  }
}
