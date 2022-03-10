import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/partitura_scroll/application/partitura_scroll_notifier.dart';

final partituraScrollProvider =
    StateNotifierProvider<PartituraScrollNotifier, PartituraScrollState>((ref) {
  return PartituraScrollNotifier();
});
