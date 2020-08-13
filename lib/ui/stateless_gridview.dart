import 'package:flutter/material.dart';

class AppGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.teal[100 * ((index + 1) % 8)],
          alignment: Alignment.center,
          child: Text(
            "Hello flutter $index",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}

/*
children: [
        Container(
          color: Colors.teal[300],
          alignment: Alignment.center,
          child: Text(
            "Hello flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
 */
