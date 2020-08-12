import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.orange, accentColor: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            'Salam Ahmet',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB');
          },
          tooltip: 'Pox pusur',
          child: const Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        body: Container(
          color: Colors.teal[50],
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.only(top: 20, left: 30),
          constraints: BoxConstraints.expand(
            width: 400,
            height: 400,
          ),
          child: Text(
            "Per petux",
            style: TextStyle(fontSize: 36),
          ),
        ),
      )));
}
