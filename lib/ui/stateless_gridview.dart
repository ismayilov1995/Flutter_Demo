import 'package:flutter/material.dart';

class AppGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        int shade = 100 * ((index + 1) % 8);
        return Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: Colors.teal[shade],
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.yellow],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/icon.jpg"),
                alignment: Alignment.topCenter,
                colorFilter:
                    ColorFilter.mode(Colors.orange[shade], BlendMode.multiply),
                fit: BoxFit.cover),
            // border: Border.all(
            //    width: 5, color: Colors.indigo, style: BorderStyle.solid),
            border: Border(
                top: BorderSide(width: 5, color: Colors.indigo),
                bottom: BorderSide(width: 5, color: Colors.grey)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(6.0, 6.0),
                blurRadius: 6.0,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Hello flutter $index",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
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
