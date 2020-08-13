import 'package:flutter/material.dart';

class StatefullPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          // textTheme: TextTheme(headline1: TextStyle(fontSize: 198))
        ),
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
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCounter,
        child: Icon(Icons.ac_unit),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to flutter you have pressed",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text("${widget.counter}",
                style: Theme.of(context).textTheme.headline1.copyWith(
                    color: widget.counter < 0 ? Colors.red : Colors.indigo)),
            Text("times"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.indeterminate_check_box),
                  color: Colors.red,
                  iconSize: 36,
                  onPressed: _decreaseCounter,
                ),
                IconButton(
                  icon: Icon(Icons.add_box),
                  color: Colors.indigo,
                  iconSize: 36,
                  onPressed: _increaseCounter,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _increaseCounter() {
    setState(() {
      widget.counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      widget.counter--;
    });
  }
}
