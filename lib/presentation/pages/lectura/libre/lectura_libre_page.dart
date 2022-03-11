import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/pages/lectura/libre/widgets/botonera_libre.dart';
import 'package:solfeo/presentation/pages/lectura/libre/widgets/pentagrama_libre.dart';
import 'package:solfeo/presentation/pages/lectura/libre/widgets/score_libre.dart';

class LecturaLibrePage extends ConsumerStatefulWidget {
  const LecturaLibrePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LecturaLibrePageState();
}

class _LecturaLibrePageState extends ConsumerState<LecturaLibrePage> {
  final isThemeWhite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const Expanded(
            flex: 60,
            child: PentagramaLibre(),
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
    );
  }
}
