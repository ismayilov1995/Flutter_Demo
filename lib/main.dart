import 'package:flutter/material.dart';
import 'navigation.dart';

// void main() => runApp(MyApp());
void main() => runApp(
      MaterialApp(
          title: "ListView",
          theme: ThemeData(primarySwatch: Colors.orange),
          debugShowCheckedModeBanner: false,
          home: AppNavigation()),
    );
