import 'package:flutter/material.dart';

import './Manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment 1"),
        ),
        body: Manager(),
      ),
    );
  }
}
