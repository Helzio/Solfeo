import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';
import 'package:solfeo/presentation/acore/widgets/botonera/botonera.dart';
import 'package:solfeo/presentation/acore/widgets/score/score_widget.dart';
import 'package:solfeo/presentation/pages/lectura/libre/widgets/pentagrama_lectura_libre.dart';

class LecturaLibrePage extends ConsumerStatefulWidget {
  const LecturaLibrePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LecturaLibrePageState();
}

class _LecturaLibrePageState extends ConsumerState<LecturaLibrePage> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    ref.read(lecturaLibreProvider.notifier).loadSounds();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: focusNode,
      autofocus: true,
      onKey: (event) {
        final key = event.logicalKey;
        if (event.isKeyPressed(key)) {
          if (key.keyLabel == "Escape" ||
              key.keyLabel == " " ||
              key.keyLabel == "Enter") {
            ref.read(lecturaLibreProvider.notifier).generateNotes();
          }
          if (key.keyLabel == "Numpad Add") {
            ref.read(lecturaLibreProvider.notifier).addLevel();
          }
          if (key.keyLabel == "Numpad Subtract") {
            ref.read(lecturaLibreProvider.notifier).removeLevel();
          }
          if (key.keyLabel == "D") {
            ref
                .read(lecturaLibreProvider.notifier)
                .setEnterNote(Nota.initial(Tono.Do));
          }
          if (key.keyLabel == "R") {
            ref
                .read(lecturaLibreProvider.notifier)
                .setEnterNote(Nota.initial(Tono.Re));
          }
          if (key.keyLabel == "M") {
            ref
                .read(lecturaLibreProvider.notifier)
                .setEnterNote(Nota.initial(Tono.Mi));
          }
          if (key.keyLabel == "F") {
            ref
                .read(lecturaLibreProvider.notifier)
                .setEnterNote(Nota.initial(Tono.Fa));
          }
          if (key.keyLabel == "S") {
            ref
                .read(lecturaLibreProvider.notifier)
                .setEnterNote(Nota.initial(Tono.Sol));
          }
          if (key.keyLabel == "L") {
            ref
                .read(lecturaLibreProvider.notifier)
                .setEnterNote(Nota.initial(Tono.La));
          }
          if (key.keyLabel == "I") {
            ref
                .read(lecturaLibreProvider.notifier)
                .setEnterNote(Nota.initial(Tono.Si));
          }
        }
      },
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.grey.shade100,
            body: Column(
              children: [
                if (!kIsWeb)
                  AppBar(
                    title: const Text(
                      "Entrenamiento libre",
                    ),
                    backgroundColor: Colors.grey.shade900,
                  ),
                const ScoreWidget(
                  showMetaDiaria: false,
                ),
                const Expanded(
                  flex: 50,
                  child: PentagramaLecturaLibre(),
                ),
                const Divider(),
                Expanded(
                  flex: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Botonera(
                      color: Colors.grey.shade100,
                      colorSecundary: Colors.grey.shade800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
