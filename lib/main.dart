import 'package:flutter/material.dart';
import 'package:leoswords/app.dart';
import 'package:leoswords/models/speech_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      title: 'Leo\'s words',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => SpeechBarModel(),
          child: const App(),
        ),
      )));
}
