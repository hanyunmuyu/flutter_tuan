import 'package:flutter/material.dart';

class CommunityMember extends StatelessWidget {
  final int id;

  CommunityMember(this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => ListTile(
              title: Text('$index'),
            ),
        itemCount: 100,
      ),
    );
  }
}
