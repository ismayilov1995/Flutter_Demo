import 'package:flutter/material.dart';
import 'package:helloflutter/views/about.dart';
import 'package:helloflutter/views/contact.dart';

class AppNavigation extends StatelessWidget {
  String title = "Contacts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text(
                  'Go About',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ),
                  );
                },
              ),
              FlatButton(
                child: Text(
                  'Go Contacts',
                  style: TextStyle(color: Colors.indigo),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contact(title)));
                },
              ),
            ],
          ),
        ));
  }
}
