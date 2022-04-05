import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/acore/widgets/pentagrama/pentagrama_widget.dart';

class PentagramaLecturaLibre extends ConsumerWidget {
  const PentagramaLecturaLibre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pentagrama =
        ref.watch(lecturaLibreProvider.select((value) => value.pentagrama));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return PentagramaWidget(
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
