import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/speech/speech/application/speech_notifier.dart';

final speechProvider =
    StateNotifierProvider<SpeechNotifier, SpeechState>((ref) {
  return SpeechNotifier();
});
