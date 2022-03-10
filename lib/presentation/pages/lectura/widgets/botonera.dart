import 'package:flutter/material.dart';

class Botonera extends StatelessWidget {
  const Botonera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Stack(
        alignment: Alignment.center,
        children: const [
          CirculoBlanco(),
          BotonNota(nota: 0),
          BotonNota(nota: 1),
          BotonNota(nota: 2),
          BotonNota(nota: 3),
          BotonNota(nota: 4),
          BotonNota(nota: 5),
          BotonNota(nota: 6),
        ],
      ),
    );
  }
}

class CirculoBlanco extends StatelessWidget {
  const CirculoBlanco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Padding(
        padding: const EdgeInsets.all(39.0),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
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
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  shape: BoxShape.circle,
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.shade800,
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
        ),
      ],
    );
  }
}
