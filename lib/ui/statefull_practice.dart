import 'package:flutter/material.dart';

class StatefullPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        title: "Material title",
        home: MyHomePage(title: "Home Page Sended"));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int counter = 0;

  MyHomePage({this.title}) {}

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increaseCounter();
          });
        },
        child: Icon(Icons.ac_unit),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to flutter you have pressed"),
            Text(
              "${widget.counter}",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Text("times"),
            RaisedButton(
              onPressed: () {
                setState(() {
                  decreaseCounter();
                });
              },
              child: Text('Decrease'),
            )
          ],
        ),
      ),
    );
  }

  void increaseCounter() {
    widget.counter++;
  }

  void decreaseCounter() {
    widget.counter--;
  }
}
