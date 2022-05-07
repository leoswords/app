import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BarModel extends ChangeNotifier {
  final DoubleLinkedQueue _list = DoubleLinkedQueue<String>();
  final FlutterTts _tts = FlutterTts();

  String get value => _list.join(" ");

  void add(String value) {
    _list.add(value);
    notifyListeners();
  }

  void backspace() {
    _list.removeLast();
    notifyListeners();
  }

  void speak() {
    _tts.speak(value);
  }

  void clear() {
    _list.clear();
    notifyListeners();
  }
}
