import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';
import 'package:solfeo/presentation/acore/utils/colors.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/widgets/avatar_image.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/widgets/meta_diaria.dart';

class WebDrawer extends StatelessWidget {
  const WebDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        backgroundColor: Colors.grey.shade200,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: const [
                        AvatarImage(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: MetaDiariaWidget(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
                  height: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Entrenamiento del lectura",
                      style: TextStyle(
                        color: baseDark2,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  selected: true,
                  dense: true,
                  selectedTileColor: Colors.grey.shade300,
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorPastel1,
                    ),
                    child: const Icon(
                      MdiIcons.playlistMusicOutline,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  horizontalTitleGap: 16,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  title: const Text(
                    "Libre",
                    style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorPastel6,
                    ),
                    child: const Icon(
                      MdiIcons.metronome,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  horizontalTitleGap: 16,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: const Text(
                    "Con metronomo",
                    style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorPastel2,
                    ),
                    child: const Icon(
                      MdiIcons.controllerClassicOutline,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  horizontalTitleGap: 16,
                  title: const Text(
                    "Modo arcade",
                    style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorPastel3,
                    ),
                    child: const Icon(
                      MdiIcons.scriptTextOutline,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  horizontalTitleGap: 16,
                  title: const Text(
                    "Ejercicios",
                    style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
                  height: 32,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Entrenamiento de ritmo",
                  style: TextStyle(
                    color: baseDark2,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorPastel6,
                    ),
                    child: const Icon(
                      MdiIcons.metronome,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  horizontalTitleGap: 16,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: const Text(
                    "Con metronomo",
                    style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorPastel2,
                    ),
                    child: const Icon(
                      MdiIcons.controllerClassicOutline,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  horizontalTitleGap: 16,
                  title: const Text(
                    "Modo arcade",
                    style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorPastel3,
                    ),
                    child: const Icon(
                      MdiIcons.scriptTextOutline,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  horizontalTitleGap: 16,
                  title: const Text(
                    "Ejercicios",
                    style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
                  height: 32,
                ),
              ),
              const LogoutTileWeb(),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoutTileWeb extends ConsumerWidget {
  const LogoutTileWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        dense: true,
        leading: Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: colorPastel11,
          ),
          child: const Icon(
            MdiIcons.logout,
            color: Colors.white,
            size: 18,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        horizontalTitleGap: 16,
        title: const Text(
          "Cerrar sesión",
          style: TextStyle(
            color: Color(0xff2E3E5C),
            fontSize: 12,
          ),
        ),
        onTap: () async {
          ref.read(loginProvider.notifier).singOut();
        },
      ),
    );
  }
}
