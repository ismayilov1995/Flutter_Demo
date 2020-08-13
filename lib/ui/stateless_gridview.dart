import 'package:flutter/material.dart';

class AppGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      primary: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.teal[300],
          alignment: Alignment.center,
          child: Text(
            "Hello flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal[300],
          alignment: Alignment.center,
          child: Text(
            "Hello flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal[300],
          alignment: Alignment.center,
          child: Text(
            "Hello flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
