import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      accentColor: Colors.orange,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('First Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Set alarm',
        child: const Icon(
          Icons.access_alarms,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[100],
                child: Text(
                  'D',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[200],
                child: Text(
                  'E',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[300],
                child: Text(
                  'M',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[400],
                child: Text(
                  'O',
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[200],
            child: Text(
              'A',
              style: TextStyle(fontSize: 26),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[300],
            child: Text(
              'S',
              style: TextStyle(fontSize: 26),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[400],
            child: Text(
              'S',
              style: TextStyle(fontSize: 26),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[500],
            child: Text(
              'A',
              style: TextStyle(fontSize: 26),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[600],
            child: Text(
              'Q',
              style: TextStyle(fontSize: 26),
            ),
          ),
        ],
      ),
    ),
  ));
}
