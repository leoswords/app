import 'package:flutter/material.dart';
import 'package:leos_words/app.dart';

void main() {
  App app = App();
  runApp(MaterialApp(
      title: 'Leo\'s words',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: app,
      )));
}
