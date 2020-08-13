import 'package:flutter/material.dart';
import 'package:helloflutter/ui/aficion_samples.dart';
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
              title: Row(children: [
                Icon(
                  Icons.touch_app,
                  color: Colors.white,
                  size: 36,
                ),
                Text(
                  'List demos',
                  style: TextStyle(color: Colors.white),
                )
              ]),
            ),
            body: AficionListSamples(),
          )),
    );
