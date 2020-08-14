import 'package:flutter/material.dart';
import 'package:helloflutter/views/about.dart';
import 'package:helloflutter/views/contact.dart';
import 'package:helloflutter/views/profile.dart';
import 'navigation.dart';

// void main() => runApp(MyApp());
void main() => runApp(
      MaterialApp(
        title: "ListView",
        initialRoute: '/',
        routes: {
          '/': (context) => AppNavigation(),
          '/about': (context) => About(),
          '/contact': (context) => Contact("Contacts"),
          '/profile': (context) => Profile("Profile"),
          '/test': (context) => TestPage("Test"),
          '/list': (context) => AppList(),
        },
        onGenerateRoute: (settings) {
          List<String> pathMembers = settings.name.split("/");
          if (pathMembers[1] == "detail") {
            return MaterialPageRoute(
                builder: (context) => ListDetails(int.parse(pathMembers[2])));
          }
          return null;
        },
        onUnknownRoute: (RouteSettings settings) =>
            MaterialPageRoute(builder: (context) => AppNavigation()),
        theme: ThemeData(primarySwatch: Colors.orange),
        debugShowCheckedModeBanner: false,
      ),
    );
