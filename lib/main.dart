import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.yellow),
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
        body: Center(
          child: Container(
            color: Colors.teal[50],
            constraints: BoxConstraints(
                maxHeight: 300, maxWidth: 300, minHeight: 200, minWidth: 200),
            child: Text(
              "Per petux",
              style: TextStyle(fontSize: 36),
            ),
          ),
        )),
  ));
}
