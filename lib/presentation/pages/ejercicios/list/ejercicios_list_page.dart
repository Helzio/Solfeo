import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/routes/app_route.gr.dart';

class EjerciciosListPage extends ConsumerWidget {
  const EjerciciosListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              AutoRouter.of(context).push(const LecturaEjercicioRoute());
            },
            leading: const Icon(
              Icons.hotel_class_sharp,
            ),
            title: const Text("Lección 19"),
          );
        },
      ),
    );
  }
}
