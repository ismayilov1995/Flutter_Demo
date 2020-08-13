import 'package:flutter/material.dart';

class AppCollapsableToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Sliver AppBar'),
          backgroundColor: Colors.orangeAccent,
          expandedHeight: 200,
          floating: true,
        ),
//        SliverList(),
//        SliverGrid(),
      ],
    );
  }
}
