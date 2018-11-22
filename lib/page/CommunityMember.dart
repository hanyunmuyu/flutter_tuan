import 'package:flutter/material.dart';

class CommunityMember extends StatelessWidget {
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
