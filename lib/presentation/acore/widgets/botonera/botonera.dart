import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';

enum Size { small, normal, big }

class Botonera extends StatefulWidget {
  final Color color;
  final Color colorSecundary;
  const Botonera({
    Key? key,
    required this.color,
    required this.colorSecundary,
  }) : super(key: key);

  @override
  State<Botonera> createState() => _BotoneraState();
}

class _BotoneraState extends State<Botonera> {
  final isThemeWhite = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Circulo(
          colorSecundary: widget.colorSecundary,
        ),
        BotonNota(
          nota: 0,
          color: widget.color,
          colorSecundary: widget.colorSecundary,
        ),
        BotonNota(
          nota: 1,
          color: widget.color,
          colorSecundary: widget.colorSecundary,
        ),
        BotonNota(
          nota: 2,
          color: widget.color,
          colorSecundary: widget.colorSecundary,
        ),
        BotonNota(
          nota: 3,
          color: widget.color,
          colorSecundary: widget.colorSecundary,
        ),
        BotonNota(
          nota: 4,
          color: widget.color,
          colorSecundary: widget.colorSecundary,
        ),
        BotonNota(
          nota: 5,
          color: widget.color,
          colorSecundary: widget.colorSecundary,
        ),
        BotonNota(
          nota: 6,
          color: widget.color,
          colorSecundary: widget.colorSecundary,
        ),
        /* Container(
          height: 48,
          width: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ResetButton(
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
        ), */
      ],
    );
  }
}

class ResetButton extends ConsumerWidget {
  final Size size;
  final Color color;
  final Color colorSecundary;
  const ResetButton({
    Key? key,
    required this.color,
    required this.colorSecundary,
    this.size = Size.normal,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return ElevatedButton(
      onPressed: () {
        ref.read(lecturaLibreProvider.notifier).generateNotes();
      },
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.zero,
        shape: const StadiumBorder(),
      ),
      child: Center(
        child: Icon(
          Icons.refresh,
          size: size == Size.normal ? 12 : 14,
          color: colorSecundary,
        ),
      ),
    );
  }
}

class Circulo extends StatefulWidget {
  final Size size;
  final Color colorSecundary;
  const Circulo({
    Key? key,
    this.size = Size.normal,
    required this.colorSecundary,
  }) : super(key: key);

  @override
  State<Circulo> createState() => _CirculoState();
}

class _CirculoState extends State<Circulo> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Padding(
        padding: EdgeInsets.all(
          widget.size == Size.normal ? 32 : 39.0,
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.colorSecundary,
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
  final Color color;
  final Color colorSecundary;
  static const nombreNotas = ["do", "re", "mi", "fa", "sol", "la", "si"];
  static List<Nota> notas = [
    Nota.initial(Tono.Do),
    Nota.initial(Tono.Re),
    Nota.initial(Tono.Mi),
    Nota.initial(Tono.Fa),
    Nota.initial(Tono.Sol),
    Nota.initial(Tono.La),
    Nota.initial(Tono.Si),
  ];
  const BotonNota({
    Key? key,
    required this.nota,
    required this.color,
    required this.colorSecundary,
    this.size = Size.normal,
  }) : super(key: key);

  @override
  ConsumerState<BotonNota> createState() => _BotonNotaState();
}

class _BotonNotaState extends ConsumerState<BotonNota> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: widget.nota * 0.8975979010239272,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: widget.size == Size.normal ? 64 : 80,
          width: widget.size == Size.normal ? 64 : 80,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
          child: Align(
            child: Container(
              height: widget.size == Size.normal ? 48 : 64,
              width: widget.size == Size.normal ? 48 : 64,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(lecturaLibreProvider.notifier)
                      .setEnterNote(BotonNota.notas[widget.nota]);
                },
                style: ElevatedButton.styleFrom(
                  primary: widget.color,
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
                        color: widget.colorSecundary,
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
