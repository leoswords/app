import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leoswords/app.dart';
import 'package:leoswords/models/speech_bar.dart';
import 'package:leoswords/services/tts.dart';

final barProvider = StateNotifierProvider<SpeechBarModel, List<String>>(
    (ref) => SpeechBarModel());

final textProvider = Provider<String>((ref) {
  return ref.watch(barProvider).join(" ");
});

final ttsProvider = Provider<TTS>((ref) {
  return TTS();
});

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
