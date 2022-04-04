import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_ejercicio/application/lectura_ejercicio_notifier.dart';

final lecturaEjercicioProvider = StateNotifierProvider<LecturaEjercicioNotifier, LecturaEjercicioState>((ref) {
  return LecturaEjercicioNotifier();
});
