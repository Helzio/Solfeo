import 'package:freezed_annotation/freezed_annotation.dart';
part 'sound_notifier.freezed.dart';

@freezed
class SoundState with _$SoundState {
  const SoundState._();
  const factory SoundState({
    required int time,
    required int soundId,
  }) = _SoundState;
}
