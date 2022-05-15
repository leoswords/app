import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leoswords/app.dart';
import 'package:leoswords/models/speech_bar.dart';

final barProvider = StateNotifierProvider<SpeechBarModel, List<String>>(
    (ref) => SpeechBarModel(ref));

void main() {
  runApp(MaterialApp(
      title: 'Leo\'s words',
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: ProviderScope(
          child: App(),
        ),
      )));
}
