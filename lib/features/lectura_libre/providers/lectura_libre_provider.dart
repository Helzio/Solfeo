import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/acore/database/providers/providers.dart';
import 'package:solfeo/features/lectura_libre/application/lectura_libre_notifier.dart';
import 'package:solfeo/features/lectura_libre/infrastructure/local/lectura_libre_local.dart';

final lecturaLibreLocalProvider = Provider<LecturaLibreLocal>((ref) {
  return LecturaLibreLocal(ref.watch(databaseProvider).instance);
});

final lecturaLibreProvider =
    StateNotifierProvider<LecturaLibreNotifier, LecturaLibreState>((ref) {
  return LecturaLibreNotifier(ref.watch(lecturaLibreLocalProvider));
});
