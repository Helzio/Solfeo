import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';

class LevelChip extends ConsumerWidget {
  final String text;
  final bool enabled;
  final Nota nota;
  const LevelChip({
    Key? key,
    required this.text,
    required this.enabled,
    required this.nota,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greenNotes =
        ref.watch(lecturaLibreProvider.select((value) => value.greenNotes));
    return Padding(
      padding: const EdgeInsets.only(right: 4, top: 4),
      child: Container(
        decoration: BoxDecoration(
          color: enabled ? Colors.grey.shade400 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
          border: greenNotes.contains(nota)
              ? Border.all(color: Colors.green)
              : Border.all(color: Colors.transparent),
        ),
        child: InkWell(
          onTap: enabled
              ? () {
                  if (greenNotes.contains(nota)) {
                    ref
                        .read(lecturaLibreProvider.notifier)
                        .removeGreenNote(nota);
                  } else {
                    ref.read(lecturaLibreProvider.notifier).addGreenNote(nota);
                  }
                }
              : null,
          onLongPress: () {
            if (greenNotes.contains(nota)) {
              ref.read(lecturaLibreProvider.notifier).clearGreenNotes();
            } else {
              ref.read(lecturaLibreProvider.notifier).addAllGreenNotes();
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 17,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                  color: enabled ? Colors.black : Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
