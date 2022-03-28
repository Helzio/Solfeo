import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfeo/features/speech/download/domain/failures/download_speech_failure.dart';
import 'package:solfeo/features/speech/download/infrastructure/repositories/download_speech_repository.dart';
part 'download_speech_notifer.freezed.dart';

@freezed
class DownloadSpeechState with _$DownloadSpeechState {
  const DownloadSpeechState._();
  const factory DownloadSpeechState.initial() = _Initial;
  const factory DownloadSpeechState.loading(double progress) = _Loading;
  const factory DownloadSpeechState.loaded() = _Loaded;
  const factory DownloadSpeechState.failure(DownloadSpeechFailure failure) =
      _Failure;
}

class DownloadSpeechNotifier extends StateNotifier<DownloadSpeechState> {
  final DownloadSpeechRepository _repository;
  DownloadSpeechNotifier(this._repository)
      : super(const DownloadSpeechState.initial());

  void reset(){
    state = const DownloadSpeechState.initial();
  }

  Future<void> downloadLanguage() async {
    state = const DownloadSpeechState.loading(0);
    final response = await _repository.downloadSpeech(
      onProgress: (progress) {
        state = DownloadSpeechState.loading(progress);
      },
    );

    response.fold(
      (l) => state = DownloadSpeechState.failure(l),
      (r) => state = const DownloadSpeechState.loaded(),
    );
  }
}
