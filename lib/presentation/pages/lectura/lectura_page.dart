import 'package:flutter/material.dart';
import 'package:solfeo/presentation/pages/lectura/widgets/botonera.dart';
import 'package:solfeo/presentation/pages/lectura/widgets/pentagrama.dart';

class LecturaPage extends StatelessWidget {
  const LecturaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solfeo'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: const [
          Expanded(
            child: Pentagrama(
              height: 120,
            ),
          ),
          Expanded(
            child: Botonera(),
          ),
        ],
      ),
    );
  }
}
