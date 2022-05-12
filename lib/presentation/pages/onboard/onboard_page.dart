import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:solfeo/presentation/acore/utils/colors.dart';
import 'package:solfeo/routes/app_route.gr.dart';

class OnboardPage extends ConsumerWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 32,
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
            const Text(
              "¡Te damos la bienvenida a Solfa! Tu entrenador de solfeo",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Lottie.asset(
                'assets/animations/music_class.json',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const RegisterRoute());
                },
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Comenzar",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
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
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
