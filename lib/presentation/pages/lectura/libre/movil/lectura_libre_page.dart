import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/pages/lectura/libre/movil/widgets/botonera_libre.dart';
import 'package:solfeo/presentation/pages/lectura/libre/movil/widgets/pentagrama_libre.dart';
import 'package:solfeo/presentation/pages/lectura/libre/movil/widgets/score_libre.dart';

class LecturaLibrePage extends ConsumerStatefulWidget {
  const LecturaLibrePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LecturaLibrePageState();
}

class _LecturaLibrePageState extends ConsumerState<LecturaLibrePage> {
  final isThemeWhite = true;
  final FocusNode focusNode = FocusNode();

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
            ref.read(lecturaLibreProvider.notifier).setEnterNote("do");
          }
          if (key.keyLabel == "R") {
            ref.read(lecturaLibreProvider.notifier).setEnterNote("re");
          }
          if (key.keyLabel == "M") {
            ref.read(lecturaLibreProvider.notifier).setEnterNote("mi");
          }
          if (key.keyLabel == "F") {
            ref.read(lecturaLibreProvider.notifier).setEnterNote("fa");
          }
          if (key.keyLabel == "S") {
            ref.read(lecturaLibreProvider.notifier).setEnterNote("sol");
          }
          if (key.keyLabel == "L") {
            ref.read(lecturaLibreProvider.notifier).setEnterNote("la");
          }
          if (key.keyLabel == "I") {
            ref.read(lecturaLibreProvider.notifier).setEnterNote("si");
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 56,
          flexibleSpace: SizedBox(
            height: 56,
            child: Material(
              elevation: 8,
              color: Colors.grey.shade900,
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text("Entrenamiento libre"),
          ),
          actions: [
            IconButton(
              onPressed: () {
                ref.read(lecturaLibreProvider.notifier).removeLevel();
              },
              icon: const Icon(
                Icons.remove,
              ),
            ),
            IconButton(
              onPressed: () {
                ref.read(lecturaLibreProvider.notifier).addLevel();
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        backgroundColor: isThemeWhite ? Colors.white : Colors.grey.shade900,
        body: Column(
          children: [
            const ScoreLibre(),
            Expanded(
              flex: 60,
              child: PentagramaLibre(
              ),
            ),
            const Divider(),
            Expanded(
              flex: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: const [
                    BotoneraLibre(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
