import 'package:flutter/material.dart';
import 'ui/list_demos.dart';
import 'ui/statefull_practice.dart';
import 'ui/MyApp.dart';

// void main() => runApp(MyApp());
void main() => runApp(
      MaterialApp(
          title: "ListView",
          theme: ThemeData(primarySwatch: Colors.orange),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                'List demos',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: ListDemos(),
          )),
    );
