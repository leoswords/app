import 'package:flutter/material.dart';
import 'package:leoswords/button.dart';
import 'package:leoswords/models/speech_bar.dart';
import 'package:leoswords/page.dart' as p;
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bar = Row(children: [
      Flexible(
          flex: 90,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Center(
                child: Consumer<SpeechBarModel>(
                    builder: (context, speechBar, child) =>
                        Text(speechBar.value))),
            onTap: () =>
                Provider.of<SpeechBarModel>(context, listen: false).speak(),
          )),
      Flexible(
          flex: 10,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: const Center(child: Icon(Icons.backspace)),
            onTap: () =>
                Provider.of<SpeechBarModel>(context, listen: false).backspace(),
            onLongPress: () =>
                Provider.of<SpeechBarModel>(context, listen: false).clear(),
          ))
    ]);

    var pageWidget = p.PageWidget(getPage());
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
