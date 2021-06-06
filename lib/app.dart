import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts_web.dart';
import 'package:leos_words/button.dart';
import 'package:leos_words/page.dart' as p;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

import 'package:flutter_tts/flutter_tts.dart';

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> {
  String? _message;
  late FlutterTts flutterTts;

  void _onTouch(String? msg) {
    setState(() {
      _message = msg;
    });
  }

  @override
  void initState() {
    super.initState();
    initTts();
  }

  TtsState ttsState = TtsState.stopped;

  bool get isIOS => !kIsWeb && Platform.isIOS;

  bool get isAndroid => !kIsWeb && Platform.isAndroid;

  bool get isWeb => kIsWeb;

  Future _getDefaultEngine() async {
    var engine = await flutterTts.getDefaultEngine;
    if (engine != null) {
      print(engine);
    }
  }

  initTts() {
    flutterTts = FlutterTts();

    if (isAndroid) {
      _getDefaultEngine();
    }

    flutterTts.setStartHandler(() {
      setState(() {
        print("Playing");
        ttsState = TtsState.playing;
      });
    });

    flutterTts.setCompletionHandler(() {
      setState(() {
        print("Complete");
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setCancelHandler(() {
      setState(() {
        print("Cancel");
        ttsState = TtsState.stopped;
      });
    });

    if (isWeb || isIOS) {
      flutterTts.setPauseHandler(() {
        setState(() {
          print("Paused");
          ttsState = TtsState.paused;
        });
      });

      flutterTts.setContinueHandler(() {
        setState(() {
          print("Continued");
          ttsState = TtsState.continued;
        });
      });
    }

    flutterTts.setErrorHandler((msg) {
      setState(() {
        print("error: $msg");
        ttsState = TtsState.stopped;
      });
    });

    //flutterTts.setVolume(1.0);
  }

  @override
  Widget build(BuildContext context) {
    var bar = AppBar(
      toolbarHeight: 100,
      centerTitle: false,
      title: GestureDetector(
        child: Text(_message ?? "empty"),
        onTap: () => {
          if (_message != null) {flutterTts.speak(_message!)}
        },
      ),
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
