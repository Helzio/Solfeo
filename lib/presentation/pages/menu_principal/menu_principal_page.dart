import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/presentation/acore/widgets/drawer/web_drawer.dart';
import 'package:solfeo/presentation/pages/lectura/libre/lectura_libre_page.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/menu_movil.dart';

class MenuPrincipalPage extends ConsumerWidget {
  const MenuPrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (kIsWeb || Platform.isMacOS) {
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
            child: Text("Curso de solfeo"),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                MdiIcons.themeLightDark,
              ),
            ),
          ],
        ),
        body: Row(
          children: const [
            WebDrawer(),
            Expanded(
              child: LecturaLibrePage(),
            ),
          ],
        ),
      );
    }
    return const MenuMovil();
  }
}
