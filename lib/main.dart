import 'package:flutter/material.dart';
import 'package:leos_words/page.dart' as p;
import 'package:leos_words/picture.dart';

void main() {
  runApp(MaterialApp(
      title: 'Leo\'s Words',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("supsup"),
        ),
        body: p.PageWidget(p.Page("", [
          [
            Picture("img", "text", "value"),
            Picture("img", "a", "a"),
            Picture("img", "a2", "a2")
          ],
          [
            Picture("img", "textb", "valueb"),
            Picture("img", "b", "b"),
            Picture("img", "b2", "b2")
          ],
          [
            Picture("img", "textc", "valuec"),
            Picture("img", "c", "c"),
            Picture("img", "c2", "c2")
          ],
        ])),
      )));
}
