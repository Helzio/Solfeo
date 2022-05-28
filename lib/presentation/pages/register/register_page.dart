import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/features/google_singin/application/login_notifier.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';
import 'package:solfeo/presentation/acore/utils/colors.dart';
import 'package:solfeo/presentation/acore/widgets/flash/error_flash.dart';
import 'package:solfeo/presentation/pages/register/widgets/google_sign_in_button.dart';
import 'package:solfeo/routes/app_route.gr.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen<LoginState>(loginProvider, (_, state) {
      state.maybeWhen(
        orElse: () => null,
        failure: (failure) => failure.maybeWhen(
          unexpectedError: () =>
              showErrorFlash(context, "Ha ocurrido un error inesperado"),
          noInternetConnection: () =>
              showErrorFlash(context, "No hay conexión a Internet"),
          cancelledByUser: () => null,
          userDisabled: () => showErrorFlash(context, "Cuenta desabilitada"),
          orElse: () => null,
        ),
      );
    });

    return Theme(
      data: ThemeData.light().copyWith(brightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade300,
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
                Align(
                  alignment: kIsWeb || Platform.isMacOS
                      ? Alignment.center
                      : Alignment.centerLeft,
                  child: const SizedBox(
                    height: 48,
                    child: Text(
                      "Crea una cuenta para guardar tus avances",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Expanded(
                  child: Lottie.asset(
                    'assets/animations/login.json',
                    onLoaded: (composition) {},
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const GoogleSignInButton(),
                const SizedBox(
                  height: 12,
                ),
                const Align(
                  child: Text("- o -"),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 48,
                  width: kIsWeb || Platform.isMacOS ? 320 : double.infinity,
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
                            "Continuar como invitado",
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
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "Al usar Solfa aceptas nuestras ",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black87,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "Condiciones de Uso y Política de uso de Privacidad",
                          style: TextStyle(
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
                  height: 16,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "¿Ya tienes una cuenta de Solfa?",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const LoginRoute());
                      },
                      child: const Text(
                        "Iniciar sesión",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
