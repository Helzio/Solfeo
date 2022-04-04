import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';
import 'package:soundpool/soundpool.dart';
part 'lectura_ejercicio_notifier.freezed.dart';

const _key = "lectura_ejercicio";

@freezed
class LecturaEjercicioState with _$LecturaEjercicioState {
  const LecturaEjercicioState._();
  const factory LecturaEjercicioState({
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
    required int totalTime,
    required Pentagrama pentagrama,
    required Set<Nota> greenNotes,
    required bool mutted,
  }) = _LecturaEjercicioState;

  factory LecturaEjercicioState.initial() => LecturaEjercicioState(
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
        totalTime: 0,
        score: 0,
        lastScore: 0,
        lastAccuracy: 0,
        lastSpeed: 0,
        mutted: false,
        greenNotes: {},
        pentagrama: Pentagrama.lecturaEjercicio(nivel: 0),
      );
}

class LecturaEjercicioNotifier extends StateNotifier<LecturaEjercicioState> {
  final Soundpool _soundpool = Soundpool.fromOptions();
  int notaDo = -1;
  int notaRe = -1;
  int notaMi = -1;
  int notaFa = -1;
  int notaSol = -1;
  int notaLa = -1;
  int notaSi = -1;

  LecturaEjercicioNotifier()
      : super(
          LecturaEjercicioState.initial(),
        );

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
      pentagrama: Pentagrama.lecturaEjercicio(nivel: state.level),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> loadSounds() async {
    final assetDo = await rootBundle.load("assets/sounds/do.mp3");
    final assetRe = await rootBundle.load("assets/sounds/re.mp3");
    final assetMi = await rootBundle.load("assets/sounds/mi.mp3");
    final assetFa = await rootBundle.load("assets/sounds/fa.mp3");
    final assetSol = await rootBundle.load("assets/sounds/sol.mp3");
    final assetLa = await rootBundle.load("assets/sounds/la.mp3");
    final assetSi = await rootBundle.load("assets/sounds/si.mp3");
    notaDo = await _soundpool.load(assetDo);
    notaRe = await _soundpool.load(assetRe);
    notaMi = await _soundpool.load(assetMi);
    notaFa = await _soundpool.load(assetFa);
    notaSol = await _soundpool.load(assetSol);
    notaLa = await _soundpool.load(assetLa);
    notaSi = await _soundpool.load(assetSi);
  }

  void comprobarAvance() {
    if (state.accuracy >= 50 && state.speed > 30) {
      final newTotalTime = state.totalTime + state.ellapsedTime;
      //_local.saveTotalTime(newTotalTime, _key);
      state = state.copyWith(totalTime: newTotalTime);
    }

    if ((state.accuracy >= 89 && state.speed > 100) && state.level <= 9) {
      // _local.saveNivel(state.level + 1, _key);
      // _local.savePrecision(state.accuracy, _key);
      //  _local.saveVelocidad(state.speed, _key);
      state = state.copyWith(
        level: state.level + 1,
      );
    }
  }

  void toogleMutted() {
    // _local.saveMutted(_key, mutted: !state.mutted);
    state = state.copyWith(mutted: !state.mutted);
  }

  void setEnterNote(Nota note, {bool voz = false}) {
    //? Iniciar crono
    if (state.index == 0) {
      if (state.startTime == null) {
        state = state.copyWith(startTime: DateTime.now());
      }
    }

    //! Nota incorrecta
    if (state.pentagrama.notas[state.index].tono != note.tono) {
      if (state.listErrorIndex.contains(state.index)) {
        return;
      }
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
      if (!voz) {
        return;
      }
    }

    //? Play note
    if (!state.mutted && !voz) {
      switch (note.tono) {
        case Tono.Do:
          _soundpool.play(notaDo);
          break;
        case Tono.Re:
          _soundpool.play(notaRe);
          break;
        case Tono.Mi:
          _soundpool.play(notaMi);
          break;
        case Tono.Fa:
          _soundpool.play(notaFa);
          break;
        case Tono.Sol:
          _soundpool.play(notaSol);
          break;
        case Tono.La:
          _soundpool.play(notaLa);
          break;
        case Tono.Si:
          _soundpool.play(notaSi);
          break;
      }
    }

    //? Ultima nota stop crono
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
        startTime: null,
      );
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
      state = state.copyWith(
        accuracy: 0,
        lastAccuracy: 0,
        speed: 0,
        lastSpeed: 0,
        level: state.level + 1,
      );
      generateNotes();
    }
  }

  void addGreenNote(Nota note) {
    final greenNotes = {...state.greenNotes};
    greenNotes.add(note);
    state = state.copyWith(
      greenNotes: greenNotes,
    );
  }

  void addAllGreenNotes() {
    state = state.copyWith(
      greenNotes: {...getNotasDisponibles(nivel: 9)},
    );
  }

  void clearGreenNotes() {
    state = state.copyWith(
      greenNotes: {},
    );
  }

  void removeGreenNote(Nota note) {
    final greenNotes = {...state.greenNotes};
    greenNotes.remove(note);
    state = state.copyWith(
      greenNotes: greenNotes,
    );
  }

  void removeLevel() {
    if (state.level != 1) {
      state = state.copyWith(
        level: state.level - 1,
        accuracy: 0,
        lastAccuracy: 0,
        speed: 0,
        lastSpeed: 0,
      );
      generateNotes();
    }
  }
}
