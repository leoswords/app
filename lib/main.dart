import 'package:flutter/material.dart';
import 'package:leos_words/button.dart';
import 'package:leos_words/page.dart' as p;

void main() {
  runApp(MaterialApp(
      title: 'Leo\'s Words',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("supsup"),
        ),
        body: p.PageWidget(p.Page("Page1", [
          [
            Button(label: "clear"),
            Button(label: "Questions"),
            Button(label: "People"),
            Button(label: "Time"),
            Button(label: "Places"),
          ],
          [
            Button(label: "I", message: "I"),
            Button(label: "I want", message: "I want"),
            Button(label: "Actions"),
            Button(label: "Social"),
            Button(label: "ABC 123"),
          ],
          [
            Button(label: "it", message: "it"),
            Button(label: "I like", message: "I like"),
            Button(label: "can", message: "can"),
            Button(label: "do", message: "do"),
            Button(label: "Describe"),
          ],
          [
            Button(label: "you", message: "you"),
            Button(label: "I need", message: "I need"),
            Button(label: "Extra"),
            Button(label: ".", message: "."),
            Button(label: "Groups"),
          ]
        ])),
      )));
}
