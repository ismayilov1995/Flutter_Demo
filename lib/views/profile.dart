import 'package:flutter/material.dart';

import 'contact.dart';

class Profile extends StatelessWidget {
  final String title;

  Profile(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.face,
                  color: Colors.indigo,
                  size: 76,
                ),
              ),
              FlatButton(
                child: Text(
                  'Go Contacts',
                  style: TextStyle(color: Colors.indigo),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Contact("Contacts")));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
