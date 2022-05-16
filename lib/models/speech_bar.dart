import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpeechBarModel extends StateNotifier<List<String>> {
  SpeechBarModel() : super([]);

  void add(String value) {
    state = [...state, value];
  }

  void backspace() {
    if (state.isEmpty) return;
    state = state.sublist(0, state.length - 1);
  }

  void clear() {
    if (state.isEmpty) return;
    state = [];
  }
}
