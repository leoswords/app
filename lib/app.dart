import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:leos_words/button.dart';
import 'package:leos_words/page.dart' as p;

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

typedef void OnTouch(Button button);

class _App extends State<App> {
  final FlutterTts flutterTts = FlutterTts();
  String? _message;

  void _onTouch(Button button) {
    setState(() {
      _message = button.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bar = AppBar(
      toolbarHeight: 100,
      centerTitle: false,
      title: Container(
        child: _message != null ? Text(_message!) : null,
        /*onTap: () => {
          if (_message != null) {flutterTts.speak(_message!)}
        },*/
      ),
    );
    var pageWidget = p.PageWidget(_onTouch, getPage());
    //return pageWidget;
    return Column(
      children: [
        Flexible(flex: 15, child: bar),
        Flexible(flex: 85, child: pageWidget)
      ],
    );
  }

  p.Page getPage() {
    return p.Page("Page1", [
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
        Button(label: "I need", message: "I need asdfasdfasd f"),
        Button(label: "Extra"),
        Button(label: ".", message: "."),
        Button(label: "Groups"),
      ]
    ]);
  }
}
