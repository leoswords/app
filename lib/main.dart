import 'package:flutter/material.dart';
import 'package:leos_words/app.dart';
import 'package:random_color/random_color.dart';

void main() {
  //runApp(materialApp());
  runApp(App());
}

MaterialApp materialApp() {
  return MaterialApp(
    title: 'Leo\'s Words',
    theme: ThemeData.dark(),
    home: Scaffold(
        body: Column(
      children: [
        Flexible(
            flex: 12,
            child: Container(
              color: RandomColor().randomMaterialColor().shade500,
              child: Center(
                child: Text('First'),
              ),
            )),
        tableRow(),
        tableRow(),
        tableRow(),
        tableRow(),
      ],
    )));
}

Widget tableRow() {
  MaterialColor mc = RandomColor().randomMaterialColor();
  return Flexible(
      flex: 10,
      child: Row(children: [
        container(mc.shade50, '50'),
        container(mc.shade200, '200'),
        container(mc.shade400, '400'),
        container(mc.shade600, '600'),
        container(mc.shade800, '800'),
      ]));
}

Widget container(Color c, String txt) {
  return Expanded(
      child: Container(
    color: c,
    child: Center(
      child: Text(txt),
    ),
  ));
}
