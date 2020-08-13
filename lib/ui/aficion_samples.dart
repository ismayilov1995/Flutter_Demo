import 'package:flutter/material.dart';

class AficionListSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1000, itemBuilder: (context, index) => Text("Item $index"));
  }
}
