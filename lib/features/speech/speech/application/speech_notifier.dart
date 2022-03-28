import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_speech_recognition/model/speech_partial.dart';
import 'package:offline_speech_recognition/model/speech_recognition_exception.dart';
import 'package:offline_speech_recognition/model/speech_result.dart';
import 'package:offline_speech_recognition/offline_speech_recognition.dart';
import 'package:solfeo/features/speech/acore/domain/entities/spech_language_path.dart';
part 'speech_notifier.freezed.dart';

@freezed
class SpeechState with _$SpeechState {
  const SpeechState._();
  const factory SpeechState.initial() = _Initial;
  const factory SpeechState.loading() = _Loading;
  const factory SpeechState.noFile() = _NoFile;
  const factory SpeechState.loaded() = _Loaded;
  const factory SpeechState.listening(String partial) = _Listening;
}

class SpeechNotifier extends StateNotifier<SpeechState> {
  SpeechNotifier() : super(const SpeechState.initial());

  Future load() async {
    state = const SpeechState.loading();
    final String languagePath =
        (await getLanguagePath()).replaceAll(".zip", "");

    if (await Directory(languagePath).exists()) {
      try {
        await OfflineSpeechRecognition.load(languagePath);
        state = const SpeechState.loaded();
      } on SpeechRecognitionException {
        state = const SpeechState.noFile();
      }
    } else {
      state = const SpeechState.noFile();
    }
  }

  Future<void> start() async {
    try {
      await OfflineSpeechRecognition.start();
      state = const SpeechState.listening("");
      OfflineSpeechRecognition.onPartial()!.listen((event) {
        state = SpeechState.listening(event.partial);
      });
    } catch (e) {
      state = const SpeechState.noFile();
    }
  }

  Future<void> stop() async {
    try {
      state = const SpeechState.loaded();
      await OfflineSpeechRecognition.stop();
    } catch (e) {
      state = const SpeechState.noFile();
    }
  }

  Future<void> destroy() async {
    try {
      await OfflineSpeechRecognition.destroy();
      state = const SpeechState.initial();
    } catch (e) {
      state = const SpeechState.noFile();
    }
  }

  Stream<SpeechPartial>? onPartial() {
    return OfflineSpeechRecognition.onPartial();
  }

  Stream<SpeechResult>? onResult() {
    return OfflineSpeechRecognition.onResult();
  }
}
