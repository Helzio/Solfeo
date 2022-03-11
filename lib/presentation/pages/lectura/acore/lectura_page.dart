import 'package:flutter/material.dart';
import 'package:solfeo/presentation/pages/lectura/acore/widgets/botonera.dart';
import 'package:solfeo/presentation/pages/lectura/acore/widgets/metronomo/metronomo.dart';
import 'package:solfeo/presentation/pages/lectura/acore/widgets/pentagrama.dart';

class LecturaPage extends StatelessWidget {
  const LecturaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
        title: const Text(
          'Entrenamiento de Lectura',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          const Expanded(
            child: Pentagrama(
              height: 120,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Stack(
                children: const [
                  Metronomo(),
                  Botonera(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
