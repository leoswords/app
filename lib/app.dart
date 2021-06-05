import 'package:flutter/material.dart';
import 'package:leos_words/button.dart';
import 'package:leos_words/page.dart' as p;

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> {
  String? _message;

  void _onTouch(String? msg) {
    setState(() {
      _message = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bar = AppBar(
      toolbarHeight: 100,
      centerTitle: false,
      title: Text(_message ?? "empty"),
    );
    return MaterialApp(
        title: 'Leo\'s Words',
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: bar,
          body: p.PageWidget(p.Page("Page1", [
            [
              Button(label: "clear", onTouch: _onTouch),
              Button(label: "Questions", onTouch: _onTouch),
              Button(label: "People", onTouch: _onTouch),
              Button(label: "Time", onTouch: _onTouch),
              Button(label: "Places", onTouch: _onTouch),
            ],
            [
              Button(label: "I", message: "I", onTouch: _onTouch),
              Button(label: "I want", message: "I want", onTouch: _onTouch),
              Button(label: "Actions", onTouch: _onTouch),
              Button(label: "Social", onTouch: _onTouch),
              Button(label: "ABC 123", onTouch: _onTouch),
            ],
            [
              Button(label: "it", message: "it", onTouch: _onTouch),
              Button(label: "I like", message: "I like", onTouch: _onTouch),
              Button(label: "can", message: "can", onTouch: _onTouch),
              Button(label: "do", message: "do", onTouch: _onTouch),
              Button(label: "Describe", onTouch: _onTouch),
            ],
            [
              Button(label: "you", message: "you", onTouch: _onTouch),
              Button(label: "I need", message: "I need", onTouch: _onTouch),
              Button(label: "Extra", onTouch: _onTouch),
              Button(label: ".", message: ".", onTouch: _onTouch),
              Button(label: "Groups", onTouch: _onTouch),
            ]
          ])),
        ));
  }
}
