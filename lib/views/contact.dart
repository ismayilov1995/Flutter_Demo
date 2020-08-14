import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String title;

  Contact(this.title);

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
                  Icons.contacts,
                  color: Colors.indigo,
                  size: 76,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
