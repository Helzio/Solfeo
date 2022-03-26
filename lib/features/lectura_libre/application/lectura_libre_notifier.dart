import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';
part 'lectura_libre_notifier.freezed.dart';

@freezed
class LecturaLibreState with _$LecturaLibreState {
  const LecturaLibreState._();
  const factory LecturaLibreState({
    required int index,
    required int level,
    required double speed,
    required double lastSpeed,
    required double accuracy,
    required double lastAccuracy,
    required double score,
    required double lastScore,
    required Nota? enterNote,
    required Map<Nota, int> errors,
    required int errorCount,
    required List<int> listErrorIndex,
    required bool isRunning,
    required DateTime? startTime,
    required int ellapsedTime,
    required Pentagrama pentagrama,
  }) = _LecturaLibreState;

  factory LecturaLibreState.initial() => LecturaLibreState(
        index: 0,
        level: 1,
        speed: 0,
        errorCount: 0,
        listErrorIndex: [],
        accuracy: 0,
        enterNote: null,
        errors: {},
        isRunning: false,
        startTime: null,
        ellapsedTime: 0,
        score: 0,
        lastScore: 0,
        lastAccuracy: 0,
        lastSpeed: 0,
        pentagrama: Pentagrama.lecturaLibre(nivel: 1),
      );
}

class LecturaLibreNotifier extends StateNotifier<LecturaLibreState> {
  LecturaLibreNotifier() : super(LecturaLibreState.initial());

  void generateNotes() {
    state = state.copyWith(
      index: 0,
      errors: {},
      isRunning: false,
      startTime: null,
      ellapsedTime: 0,
      listErrorIndex: [],
      enterNote: null,
      errorCount: 0,
      pentagrama: Pentagrama.lecturaLibre(nivel: state.level),
    );
  }

  void comprobarAvance({bool force = false}) {
    if (((state.accuracy >= 89 && state.speed > 100) || force) &&
        state.level <= 9) {
      state = state.copyWith(
        level: state.level + 1,
      );
    }
  }

  void setEnterNote(
    Nota note,
  ) {
    if (state.index == 0) {
      state = state.copyWith(startTime: DateTime.now());
    }
    if (state.index == state.pentagrama.notas.length - 1) {
      final ellapsedTime = DateTime.now().millisecondsSinceEpoch -
          state.startTime!.millisecondsSinceEpoch;
      final segundos = ellapsedTime / 1000;
      final notasPorSegundo = state.pentagrama.notas.length / segundos;
      final speed = notasPorSegundo * 60;
      state = state.copyWith(
        ellapsedTime: ellapsedTime == state.ellapsedTime
            ? ellapsedTime + 1
            : ellapsedTime,
        lastSpeed: state.speed,
        speed: speed,
      );
    }

    if (state.pentagrama.notas[state.index].tono != note.tono) {
      final Map<Nota, int> map = {
        ...state.errors,
      };
      final int errorCount = map[state.pentagrama.notas[state.index]] ?? 0;
      map[state.pentagrama.notas[state.index]] = errorCount + 1;
      state = state.copyWith(
        errors: map,
        errorCount: state.errorCount + 1,
        listErrorIndex: [
          ...state.listErrorIndex,
          state.index,
        ],
      );

      return;
    }

    state = state.copyWith(
      enterNote: note,
      index: state.index + 1,
    );

    if (state.index == state.pentagrama.notas.length) {
      final newAccuracy =
          ((state.pentagrama.notas.length - state.errorCount) * 100) /
              state.pentagrama.notas.length;
      state = state.copyWith(
        lastScore: state.score,
        lastAccuracy: state.accuracy,
        accuracy: newAccuracy,
        score: state.level * newAccuracy,
      );
      comprobarAvance();
      generateNotes();
    }
  }

  void addLevel() {
    if (state.level <= 9) {
      comprobarAvance(force: true);
      generateNotes();
    }
  }

  void removeLevel() {
    if (state.level != 1) {
      state = state.copyWith(
        level: state.level - 1,
      );
      generateNotes();
    }
  }
}
