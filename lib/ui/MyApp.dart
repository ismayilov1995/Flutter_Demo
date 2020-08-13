import 'package:flutter/material.dart';
import 'ImageAndButtonTypes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Demo Test'),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Set alarm',
          child: const Icon(
            Icons.access_alarms,
            color: Colors.white,
          ),
        ),
        body: ImageButtonTypes(),
      ),
    );
  }
}
