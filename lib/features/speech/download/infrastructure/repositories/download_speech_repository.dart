
import 'package:dartz/dartz.dart';
import 'package:solfeo/acore/dio/domain/exceptions/exception.dart';
import 'package:solfeo/features/speech/download/domain/failures/download_speech_failure.dart';
import 'package:solfeo/features/speech/download/infrastructure/remote/download_speech_remote.dart';

class DownloadSpeechRepository {
  final DownloadSpeechRemote _remote;
  DownloadSpeechRepository(this._remote);

  Future<Either<DownloadSpeechFailure, Unit>> downloadSpeech({
    required Function(double) onProgress,
  }) async {
    try {
      await _remote.downloadSpeech(
        onProgress: onProgress,
      );
      return right(unit);
    } on InternetException {
      return left(const DownloadSpeechFailure.internet());
    } on ServerException {
      return left(const DownloadSpeechFailure.server());
    } on ModelException {
      return left(const DownloadSpeechFailure.model());
    }
  }
}
