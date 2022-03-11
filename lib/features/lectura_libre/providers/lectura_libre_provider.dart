import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/application/lectura_libre_notifier.dart';

final lecturaLibreProvider = StateNotifierProvider<LecturaLibreNotifier, LecturaLibreState>((ref) {
  return LecturaLibreNotifier();
});
