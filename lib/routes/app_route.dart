import 'package:auto_route/auto_route.dart';
import 'package:solfeo/presentation/pages/ejercicios/ejercicio/lectura_ejercicio_page.dart';
import 'package:solfeo/presentation/pages/ejercicios/list/ejercicios_list_page.dart';
import 'package:solfeo/presentation/pages/lectura/libre/lectura_libre_page.dart';
import 'package:solfeo/presentation/pages/login/login_page.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu_principal_page.dart';
import 'package:solfeo/presentation/pages/onboard/onboard_page.dart';
import 'package:solfeo/presentation/pages/register/register_page.dart';
import 'package:solfeo/presentation/pages/speech/download/speech_download_page.dart';
import 'package:solfeo/presentation/pages/splash/splash_page.dart';

@CustomAutoRouter(
  routes: <CustomRoute>[
    CustomRoute(
      page: SplashPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/",
    ),
    CustomRoute(
      page: OnboardPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/welcome",
    ),
    CustomRoute(
      page: LoginPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/login",
    ),
    CustomRoute(
      page: RegisterPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/register",
    ),
    CustomRoute(
      page: MenuPrincipalPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/menu",
    ),
    CustomRoute(
      page: LecturaLibrePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/lectura_libre",
    ),
    CustomRoute(
      page: SpeechDownloadPage,
      opaque: false,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/download",
    ),
    CustomRoute(
      page: EjerciciosListPage,
      opaque: false,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/ejercicios",
    ),
    CustomRoute(
      page: LecturaEjercicioPage,
      opaque: false,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/lectura_ejercicio",
    ),
  ],
  replaceInRouteName: "Page,Route",
)
class $AppRouter {}
