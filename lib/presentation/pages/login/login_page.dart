import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/presentation/acore/utils/colors.dart';

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
          title: const Text('Iniciar sesión'),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            bottom: 24.0,
            left: 40,
            right: 40,
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(),
              SizedBox(
                height: 48,
                child: Row(
                  children: const [
                    Text(
                      "Bienvenido de nuevo",
                      style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Al iniciar sesión con Google, Facebook o Apple se cargará tu progreso en la nube.",
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
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
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
                height: 12,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        flex: 25,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 22,
                            child: Icon(
                              MdiIcons.facebook,
                              size: 22,
                              color: Color(0xff3b5998),
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
                          "Iniciar sesión con Facebook",
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
                height: 12,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        flex: 25,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 22,
                            child: Icon(
                              MdiIcons.apple,
                              size: 22,
                              color: Colors.black,
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
                          "Iniciar sesión con Apple",
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
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
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
                height: 24,
              ),
              Align(
                child: RichText(
                  text: const TextSpan(
                    text: "Al iniciar sesión aceptas nuestra ",
                    style: TextStyle(
                      fontSize: 10,
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
            ],
          ),
        ),
      ),
    );
  }
}
