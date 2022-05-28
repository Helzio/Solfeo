import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';
import 'package:solfeo/presentation/acore/utils/colors.dart';
import 'package:solfeo/routes/app_route.gr.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(brightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).canvasColor,
          title: const Text(''),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Transform.translate(
          offset: const Offset(0, -16),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Transform.translate(
                  offset: const Offset(-14, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        height: 64,
                        width: 64,
                        color: primaryColor,
                      ),
                      Transform.translate(
                        offset: const Offset(0, 4),
                        child: Text(
                          "Solfa",
                          style: GoogleFonts.notoMusic(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 48,
                  child: Text(
                    "Bienvenido de nuevo",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Al iniciar sesión con Google se cargará tu progreso previamente guardado en la nube.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: Lottie.asset(
                    'assets/animations/login.json',
                    onLoaded: (composition) {},
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      ref.read(loginProvider.notifier).loginWithGoogle();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 25,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 24,
                              child: Image.asset(
                                "assets/images/ic_google.png",
                                height: 16,
                                width: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Expanded(
                          flex: 75,
                          child: Text(
                            "Iniciar sesión con google",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  child: Text("- o -"),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      AutoRouter.of(context).pushAndPopUntil(
                        const MenuPrincipalRoute(),
                        predicate: (d) => false,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          flex: 25,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 20,
                              child: Icon(
                                MdiIcons.musicClefTreble,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          flex: 75,
                          child: Text(
                            "Iniciar sesión como invitado",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Align(
                  child: RichText(
                    text: const TextSpan(
                      text: "Al iniciar sesión aceptas nuestra ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                      children: [
                        TextSpan(
                          text: "política de uso y privacidad",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ".",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
