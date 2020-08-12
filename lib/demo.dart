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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                      child: Icon(Icons.add_a_photo),
                      color: Colors.orange,
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Icon(Icons.add),
                      color: Colors.indigo,
                    )),
                Expanded(
                    child: Container(
                      child: Icon(Icons.wifi),
                      color: Colors.yellow,
                    )),
              ],
            )),
      )));
}
