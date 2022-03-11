import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';

enum Size { small, normal, big }

class BotoneraLibre extends StatefulWidget {
  const BotoneraLibre({Key? key}) : super(key: key);

  @override
  State<BotoneraLibre> createState() => _BotoneraLibreState();
}

class _BotoneraLibreState extends State<BotoneraLibre> {
  final isThemeWhite = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: const [
        Circulo(),
        BotonNota(nota: 0),
        BotonNota(nota: 1),
        BotonNota(nota: 2),
        BotonNota(nota: 3),
        BotonNota(nota: 4),
        BotonNota(nota: 5),
        BotonNota(nota: 6),
      ],
    );
  }
}

class Circulo extends StatefulWidget {
  final Size size;
  const Circulo({
    Key? key,
    this.size = Size.normal,
  }) : super(key: key);

  @override
  State<Circulo> createState() => _CirculoState();
}

class _CirculoState extends State<Circulo> {
  final isThemeWhite = true;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Padding(
        padding: EdgeInsets.all(
          widget.size == Size.normal ? 36 : 39.0,
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: isThemeWhite ? Colors.grey.shade800 : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BotonNota extends ConsumerStatefulWidget {
  final int nota;
  final Size size;
  static const nombreNotas = ["do", "re", "mi", "fa", "sol", "la", "si"];
  const BotonNota({
    Key? key,
    required this.nota,
    this.size = Size.normal,
  }) : super(key: key);

  @override
  ConsumerState<BotonNota> createState() => _BotonNotaState();
}

class _BotonNotaState extends ConsumerState<BotonNota> {
  final isThemeWhite = true;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: widget.nota * 0.8975979010239272,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: widget.size == Size.normal ? 72 : 80,
          width: widget.size == Size.normal ? 72 : 80,
          decoration: BoxDecoration(
            color: isThemeWhite ? Colors.white : Colors.grey.shade900,
            shape: BoxShape.circle,
          ),
          child: Align(
            child: Container(
              height: widget.size == Size.normal ? 56 : 64,
              width: widget.size == Size.normal ? 56 : 64,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(lecturaLibreProvider.notifier)
                      .setEnterNote(BotonNota.nombreNotas[widget.nota]);
                },
                style: ElevatedButton.styleFrom(
                  primary: isThemeWhite
                      ? Colors.grey.shade100
                      : Colors.grey.shade800,
                  padding: EdgeInsets.zero,
                  shape: const StadiumBorder(),
                ),
                child: Center(
                  child: Transform.rotate(
                    angle: -(widget.nota * 0.8975979010239272),
                    child: Text(
                      BotonNota.nombreNotas[widget.nota].toUpperCase(),
                      style: TextStyle(
                        fontSize: widget.size == Size.normal ? 12 : 14,
                        color: isThemeWhite ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
