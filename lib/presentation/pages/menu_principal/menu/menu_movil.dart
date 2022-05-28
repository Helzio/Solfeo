import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/presentation/acore/utils/colors.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/widgets/avatar_image.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/widgets/logout_tile.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/widgets/meta_diaria.dart';
import 'package:solfeo/routes/app_route.gr.dart';

class MenuMovil extends StatefulWidget {
  const MenuMovil({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuMovil> createState() => _MenuMovilState();
}

class _MenuMovilState extends State<MenuMovil> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                      width: 24,
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
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              height: 0,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorPastel1,
                      ),
                      child: const Icon(
                        MdiIcons.playlistMusicOutline,
                        color: Colors.white,
                      ),
                    ),
                    horizontalTitleGap: 16,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    title: const Text(
                      "Entrenamiento libre",
                      style: TextStyle(
                        color: Color(0xff2E3E5C),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {
                      AutoRouter.of(context).push(const LecturaLibreRoute());
                    },
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorPastel6,
                      ),
                      child: const Icon(
                        MdiIcons.metronome,
                        color: Colors.white,
                      ),
                    ),
                    horizontalTitleGap: 16,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    title: const Text(
                      "Entrenamiento con metrónomo",
                      style: TextStyle(
                        color: Color(0xff2E3E5C),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {},
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorPastel2,
                      ),
                      child: const Icon(
                        MdiIcons.controllerClassicOutline,
                        color: Colors.white,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    horizontalTitleGap: 16,
                    title: const Text(
                      "Modo arcade",
                      style: TextStyle(
                        color: Color(0xff2E3E5C),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {},
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorPastel3,
                      ),
                      child: const Icon(
                        MdiIcons.scriptTextOutline,
                        color: Colors.white,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    horizontalTitleGap: 16,
                    title: const Text(
                      "Ejercicios",
                      style: TextStyle(
                        color: Color(0xff2E3E5C),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {
                      AutoRouter.of(context).push(const EjerciciosListRoute());
                    },
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Divider(
                      height: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Entrenamiento de ritmo",
                      style: TextStyle(
                        color: baseDark2,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorPastel6,
                      ),
                      child: const Icon(
                        MdiIcons.metronome,
                        color: Colors.white,
                      ),
                    ),
                    horizontalTitleGap: 16,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    title: const Text(
                      "Entrenamiento con metrónomo",
                      style: TextStyle(
                        color: Color(0xff2E3E5C),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {},
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorPastel2,
                      ),
                      child: const Icon(
                        MdiIcons.controllerClassicOutline,
                        color: Colors.white,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    horizontalTitleGap: 16,
                    title: const Text(
                      "Modo arcade",
                      style: TextStyle(
                        color: Color(0xff2E3E5C),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {},
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorPastel3,
                      ),
                      child: const Icon(
                        MdiIcons.scriptTextOutline,
                        color: Colors.white,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    horizontalTitleGap: 16,
                    title: const Text(
                      "Ejercicios",
                      style: TextStyle(
                        color: Color(0xff2E3E5C),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {},
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Divider(
                      height: 32,
                    ),
                  ),
                  const LogoutTile(),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
