import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:leoswords/button.dart';
import 'package:leoswords/page.dart' as p;

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _App createState() => _App();
}

typedef OnTouch = void Function(Button button);

class _App extends State<App> {
  final FlutterTts flutterTts = FlutterTts();
  String _message = '';

  void _onTouch(Button button) {
    setState(() {
      _message += ' ' + button.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bar = Row(children: [
      Expanded(
          child: GestureDetector(
              child: Center(child: Text(_message)),
              onTap: () => {
                    if (_message.isNotEmpty) {flutterTts.speak(_message)}
                  }))
    ]);
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
    return const p.Page("Page1", [
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
