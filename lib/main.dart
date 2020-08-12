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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Image and Button types',
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.red[300],
                    child: Column(
                      children: [
                        Image.asset("assets/images/icon.jpg"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.red[300],
                    child: Column(
                      children: [
                        Image.network(
                            "https://i.picsum.photos/id/942/200/200.jpg?hmac=Gh7W-H3ZGmweB9STLwQvq-IHkxrVyawHVTKYxy-u9mA"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://i.picsum.photos/id/980/200/200.jpg?hmac=6XJlc3jZzO4_ikuKGQFXIuERlW0eZx82q3xiC-b3Tso"),
                          maxRadius: 50,
                          minRadius: 25,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.red[300],
                    child: Text(
                      'D',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.red[300],
                    child: Text(
                      'D',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.red[300],
                    child: Text(
                      'D',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  ));
}
