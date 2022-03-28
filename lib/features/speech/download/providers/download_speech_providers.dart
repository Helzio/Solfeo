import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/acore/dio/providers/providers.dart';
import 'package:solfeo/features/speech/download/application/download_speech_notifer.dart';
import 'package:solfeo/features/speech/download/infrastructure/remote/download_speech_remote.dart';
import 'package:solfeo/features/speech/download/infrastructure/repositories/download_speech_repository.dart';

final downloadSpeechRemoteProvider = Provider<DownloadSpeechRemote>((ref) {
  return DownloadSpeechRemote(ref.watch(dioProvider));
});

final downloadSpeechRepositoryProvider =
    Provider<DownloadSpeechRepository>((ref) {
  return DownloadSpeechRepository(ref.watch(downloadSpeechRemoteProvider));
});

final downloadSpeechProvider =
    StateNotifierProvider<DownloadSpeechNotifier, DownloadSpeechState>((ref) {
  return DownloadSpeechNotifier(ref.watch(downloadSpeechRepositoryProvider));
});
