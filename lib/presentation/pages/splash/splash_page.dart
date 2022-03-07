import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solfeo/routes/app_route.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => AutoRouter.of(context).replace(
        const LecturaRoute(),
      ),
    );
    return Container(
      color: Colors.black,
      child: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
