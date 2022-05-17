import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

final tts = Provider<_TTS>((ref) => _TTS());

class _TTS {
  final FlutterTts _tts = FlutterTts();

  //TODO configure tts

  void speak(String text) {
    if (text.isNotEmpty) _tts.speak(text);
  }
}
