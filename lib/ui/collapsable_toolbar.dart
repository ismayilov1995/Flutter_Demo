import 'package:flutter/material.dart';
import 'dart:math' as math;

class AppCollapsableToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.orangeAccent,
          expandedHeight: 300,
          floating: false,
          // snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Sliver AppBar'),
            centerTitle: true,
            background: Image.asset("assets/images/icon.jpg"),
          ),
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(staticListItems()),
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate(_dynamicElementBuilder, childCount: 6),
        )
      ],
    );
  }

  List<Widget> staticListItems() {
    return [
      Container(
        height: 100,
        color: Colors.red[100],
        child: FlutterLogo(
          colors: Colors.orange,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.indigo,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[200],
        child: FlutterLogo(
          colors: Colors.orange,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.indigo,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[300],
        child: FlutterLogo(
          colors: Colors.orange,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.indigo,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[400],
        child: FlutterLogo(
          colors: Colors.orange,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.indigo,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[500],
        child: FlutterLogo(
          colors: Colors.grey,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.grey[50],
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[600],
        child: FlutterLogo(
          colors: Colors.yellow,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.yellow,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue[600],
        child: FlutterLogo(
          colors: Colors.yellow,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.white,
        ),
      ),
    ];
  }

  Widget _dynamicElementBuilder(BuildContext context, int index) {
    return Container(
      height: 100,
      color: randomColor(),
      child: FlutterLogo(
        colors: Colors.grey,
        style: FlutterLogoStyle.stacked,
        textColor: Colors.white,
      ),
    );
  }

  Color randomColor() {
    return Color.fromARGB(255, math.Random().nextInt(255),
        math.Random().nextInt(255), math.Random().nextInt(255));
  }
}
