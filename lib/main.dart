import 'package:flutter/material.dart';
import 'package:leoswords/app.dart';

void main() {
  App app = const App();
  runApp(MaterialApp(
      title: 'Leo\'s words',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: app,
      )));
}
