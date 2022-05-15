import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SpeechBarModel extends StateNotifier<List<String>> {
  SpeechBarModel(this.ref) : super([]);

  final Ref ref;
  final FlutterTts _tts = FlutterTts();

  String get value => state.join(" ");

  void add(String value) {
    state = [...state, value];
  }

  void backspace() {
    if (state.isEmpty) return;
    state = state.sublist(0, state.length - 1);
  }

  void speak() {
    if (state.isNotEmpty) _tts.speak(value);
  }

  void clear() {
    if (state.isEmpty) return;
    state = [];
  }
}
