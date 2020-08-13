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

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.ac_unit),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to flutter you have pressed"),
            Text(
              "5",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Text("times"),
          ],
        ),
      ),
    );
  }
}
