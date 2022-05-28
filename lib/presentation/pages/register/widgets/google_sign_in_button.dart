import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';

class GoogleSignInButton extends ConsumerWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
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
                "Registrarse con google",
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
    );
  }
}
