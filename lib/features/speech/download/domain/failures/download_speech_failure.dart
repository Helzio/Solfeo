import 'package:freezed_annotation/freezed_annotation.dart';
part 'download_speech_failure.freezed.dart';

@freezed
class DownloadSpeechFailure with _$DownloadSpeechFailure {
  const DownloadSpeechFailure._();
  const factory DownloadSpeechFailure.internet() = _Internet;
  const factory DownloadSpeechFailure.server() = _Server;
  const factory DownloadSpeechFailure.model() = _Model;
}
