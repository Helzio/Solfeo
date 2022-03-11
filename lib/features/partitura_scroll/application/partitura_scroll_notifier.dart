import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfeo/acore/ejercicios/ejercicios.dart';
part 'partitura_scroll_notifier.freezed.dart';

@freezed
class PartituraScrollState with _$PartituraScrollState {
  const PartituraScrollState._();
  const factory PartituraScrollState({
    required int currentNote,
    required List<String> notas,
  }) = _PartituraScrollState;

  factory PartituraScrollState.initial() => const PartituraScrollState(
        currentNote: -5,
        notas: ejercicio16,
      );
}

class PartituraScrollNotifier extends StateNotifier<PartituraScrollState> {
  PartituraScrollNotifier() : super(PartituraScrollState.initial());

  void addCurrentNote() {
    state = state.copyWith(currentNote: state.currentNote + 1);
  }

  void reset() {
    state = PartituraScrollState.initial();
  }
}
