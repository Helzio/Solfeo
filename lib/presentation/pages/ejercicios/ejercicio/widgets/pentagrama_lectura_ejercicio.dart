import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_ejercicio/providers/lectura_ejercicio_providers.dart';
import 'package:solfeo/presentation/acore/widgets/pentagrama/pentagrama_ejercicios_widget.dart';

class PentagramaLecturaEjercicio extends ConsumerWidget {
  const PentagramaLecturaEjercicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pentagrama =
        ref.watch(lecturaEjercicioProvider.select((value) => value.pentagrama));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return PentagramaEjerciciosWidget(
              size: Size(
                constraints.maxWidth,
                constraints.maxHeight,
              ),
              pentagrama: pentagrama,
            );
          },
        ),
      ),
    );
  }
}
