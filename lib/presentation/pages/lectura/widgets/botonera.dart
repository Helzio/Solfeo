import 'package:flutter/material.dart';

class Botonera extends StatelessWidget {
  const Botonera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Stack(
        children: [
          const CirculoBlanco(),
          const BotonNota(nota: 0),
          const BotonNota(nota: 1),
          const BotonNota(nota: 2),
          const BotonNota(nota: 3),
          const BotonNota(nota: 4),
          const BotonNota(nota: 5),
          const BotonNota(nota: 6),
        ],
      ),
    );
  }
}

class CirculoBlanco extends StatelessWidget {
  const CirculoBlanco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(48.0),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BotonNota extends StatelessWidget {
  final int nota;
  static const nombreNotas = ["do", "re", "mi", "fa", "sol", "la", "si"];
  const BotonNota({
    Key? key,
    required this.nota,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.rotate(
          angle: nota * 0.8975979010239272,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 88,
              width: 88,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: nota * 0.8975979010239272,
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Transform.rotate(
                    angle: -(nota * 0.8975979010239272),
                    child: Text(
                      nombreNotas[nota].toUpperCase(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
