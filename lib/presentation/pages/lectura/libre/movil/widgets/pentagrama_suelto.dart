import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/pages/lectura/libre/acore/celda_simbolo.dart';

class PentagramaSuelto extends ConsumerWidget {
  final double pentagramaSize;
  final int startIndex;
  final int endIndex;
  final bool isEnd;

  const PentagramaSuelto({
    Key? key,
    required this.pentagramaSize,
    required this.startIndex,
    required this.endIndex,
    this.isEnd = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notas =
        ref.watch(lecturaLibreProvider.select((value) => value.notes));
    return SizedBox(
      height: pentagramaSize,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CeldaSimbolo(
              pentagramaSize: Size(pentagramaSize, 100),
              simbolo: Simbolo.gClef,
            ),
          ],
        ),
      ),
    );
  }
}
