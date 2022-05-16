import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  final FlutterTts _tts = FlutterTts();

  //TODO configure tts

  void speak(String text) {
    if (text.isNotEmpty) _tts.speak(text);
  }
}
