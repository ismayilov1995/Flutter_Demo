import 'package:flutter/cupertino.dart';
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
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(staticListItems()),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dynamicElementBuilder,
                childCount: 6),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dynamicElementBuilder,
                childCount: 6),
            itemExtent: 300,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(_dynamicElementBuilder,
                childCount: 6),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(_dynamicElementBuilder,
                childCount: 6),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10, maxCrossAxisExtent: 100),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 4,
          children: staticListItems(),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 100,
          children: staticListItems(),
        ),
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
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: randomColor(),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(1, 3), blurRadius: 2)
          ]),
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
