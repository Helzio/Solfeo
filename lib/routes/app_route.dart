import 'package:auto_route/auto_route.dart';
import 'package:solfeo/presentation/pages/lectura/acore/lectura_page.dart';
import 'package:solfeo/presentation/pages/lectura/libre/lectura_libre_page.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu_principal_page.dart';
import 'package:solfeo/presentation/pages/splash/splash_page.dart';

@CustomAutoRouter(
  routes: <CustomRoute>[
    CustomRoute(
      page: SplashPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/",
    ),
    CustomRoute(
      page: MenuPrincipalPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/menu",
    ),
    CustomRoute(
      page: LecturaPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/lectura",
    ),
    CustomRoute(
      page: LecturaLibrePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/lectura_libre",
    ),
  ],
  replaceInRouteName: "Page,Route",
)
class $AppRouter {}
