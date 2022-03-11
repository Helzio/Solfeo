import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    required String enterNote,
    required List<String> availableNotes,
    required List<String> currentNotes,
    required Map<String, int> errors,
    required int errorCount,
    required List<int> listErrorIndex,
    required bool isRunning,
    required List<String> notes,
    required DateTime? startTime,
    required DateTime? endTime,
  }) = _LecturaLibreState;

  factory LecturaLibreState.initial() => const LecturaLibreState(
        index: 0,
        level: 1,
        speed: 0,
        errorCount: 0,
        listErrorIndex: [],
        accuracy: 0,
        availableNotes: [
          "do",
          "sol",
        ],
        enterNote: "",
        currentNotes: [
          "do",
          "sol",
        ],
        errors: {},
        isRunning: false,
        notes: [],
        startTime: null,
        endTime: null,
        score: 0,
        lastScore: 0,
        lastAccuracy: 0,
        lastSpeed: 0,
      );
}

class LecturaLibreNotifier extends StateNotifier<LecturaLibreState> {
  LecturaLibreNotifier() : super(LecturaLibreState.initial());

  void generateNotes() {
    state = state.copyWith(
      notes: generarLista(),
      index: 0,
      errors: {},
      isRunning: false,
      startTime: null,
      endTime: null,
      listErrorIndex: [],
      enterNote: "",
      errorCount: 0,
    );
  }

  List<String> generarLista() {
    final lista = <String>[];
    final numeroNotas = 30 ~/ state.availableNotes.length;
    final sobrante = 30 % state.availableNotes.length;
    for (final note in state.availableNotes) {
      for (int i = 0; i < numeroNotas; i++) {
        lista.add(note);
      }
    }

    if (sobrante > 0) {
      final _random = Random();
      for (int i = 0; i < sobrante; i++) {
        lista.add(
          state.availableNotes[_random.nextInt(state.availableNotes.length)],
        );
      }
    }

    return lista..shuffle();
  }

  void comprobarAvance({bool force = false}) {
    if (state.accuracy >= 90 || force && state.level <= 14) {
      state = state.copyWith(
        level: state.level + 1,
      );

      final nextNote = getNextNote(state.level);
      if (nextNote.isNotEmpty) {
        state = state.copyWith(
          availableNotes: [
            ...state.availableNotes,
            nextNote,
          ],
          currentNotes: [
            nextNote,
          ],
        );
      }
    }
  }

  String getNextNote(int level) {
    switch (level) {
      case 2:
        return "do1";
      case 3:
        return "sol1";
      case 4:
        return "la";
      case 5:
        return "re1";
      case 6:
        return "re";
      case 7:
        return "si";
      case 8:
        return "mi";
      case 9:
        return "fa1";
      case 10:
        return "mi1";
      case 11:
        return "fa";
      case 12:
        return "si0";
      case 13:
        return "la1";
      case 14:
        return "si1";
      case 15:
        return "la0";
      default:
        return "";
    }
  }

  void setEnterNote(
    String note,
  ) {
    if (state.notes.isNotEmpty) {
      if (!state.notes[state.index].contains(note)) {
        final Map<String, int> map = {
          ...state.errors,
        };
        final int errorCount = map[state.notes[state.index]] ?? 0;
        map[state.notes[state.index]] = errorCount + 1;
        state = state.copyWith(
          errors: map,
          errorCount: state.errorCount + 1,
          listErrorIndex: [
            ...state.listErrorIndex,
            state.index,
          ],
        );
      }

      state = state.copyWith(
        enterNote: note,
        index: state.index + 1,
      );

      if (state.index == state.notes.length) {
        final newAccuracy = ((30 - state.errorCount) * 100) / 30;
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
  }

  void addLevel() {
    comprobarAvance(force: true);
    generateNotes();
  }

  void removeLevel() {
    if (state.level != 1) {
      final listNotes = [...state.availableNotes];
      final lastNote = getNextNote(state.level);
      listNotes.remove(lastNote);

      state = state.copyWith(
        level: state.level - 1,
      );
      if (lastNote.isNotEmpty) {
        state = state.copyWith(
          availableNotes: listNotes,
          currentNotes: [
            getNextNote(state.level),
          ],
        );
      }
      generateNotes();
    }
  }
}
