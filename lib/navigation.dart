import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloflutter/views/about.dart';
import 'package:helloflutter/views/contact.dart';
import 'package:helloflutter/views/profile.dart';

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
              RaisedButton(
                child: Text(
                  'Go Profile',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrange,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile("Profile"),
                    ),
                  );
                },
              ),
              FlatButton(
                child: Text(
                  'Go Test',
                  style: TextStyle(color: Colors.indigo),
                ),
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TestPage("Test")))
                      .then(popResponse);
                },
              ),
              FlatButton(
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
              ),
              FlatButton(
                child: Text(
                  'Wrong route',
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/wrong');
                },
              ),
            ],
          ),
        ));
  }

  FutureOr popResponse(value) {
    debugPrint(value);
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login Page',
                style: Theme.of(context).textTheme.headline2,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Sign In",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestPage extends StatelessWidget {
  final String title;

  TestPage(this.title);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("on will pop");
        Navigator.pop(context, "Data from will pop scope");
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$title Page',
                  style: Theme.of(context).textTheme.headline2,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context, "Data from Test"),
                  child: Icon(
                    Icons.school,
                    color: Colors.indigo,
                    size: 76,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
