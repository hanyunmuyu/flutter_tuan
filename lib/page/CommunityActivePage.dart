import 'package:flutter/material.dart';

class CommunityActivePage extends StatelessWidget {
  final int id;

  CommunityActivePage(this.id);

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
