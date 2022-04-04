// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../presentation/pages/ejercicios/ejercicio/lectura_ejercicio_page.dart'
    as _i6;
import '../presentation/pages/ejercicios/list/ejercicios_list_page.dart' as _i5;
import '../presentation/pages/lectura/libre/lectura_libre_page.dart' as _i3;
import '../presentation/pages/menu_principal/menu_principal_page.dart' as _i2;
import '../presentation/pages/speech/download/speech_download_page.dart' as _i4;
import '../presentation/pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashPage(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    MenuPrincipalRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MenuPrincipalPage(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LecturaLibreRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.LecturaLibrePage(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SpeechDownloadRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.SpeechDownloadPage(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    },
    EjerciciosListRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.EjerciciosListPage(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    },
    LecturaEjercicioRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.LecturaEjercicioPage(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/'),
        _i7.RouteConfig(MenuPrincipalRoute.name, path: '/menu'),
        _i7.RouteConfig(LecturaLibreRoute.name, path: '/lectura_libre'),
        _i7.RouteConfig(SpeechDownloadRoute.name, path: '/download'),
        _i7.RouteConfig(EjerciciosListRoute.name, path: '/ejercicios'),
        _i7.RouteConfig(LecturaEjercicioRoute.name, path: '/lectura_ejercicio')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MenuPrincipalPage]
class MenuPrincipalRoute extends _i7.PageRouteInfo<void> {
  const MenuPrincipalRoute() : super(MenuPrincipalRoute.name, path: '/menu');

  static const String name = 'MenuPrincipalRoute';
}

/// generated route for
/// [_i3.LecturaLibrePage]
class LecturaLibreRoute extends _i7.PageRouteInfo<void> {
  const LecturaLibreRoute()
      : super(LecturaLibreRoute.name, path: '/lectura_libre');

  static const String name = 'LecturaLibreRoute';
}

/// generated route for
/// [_i4.SpeechDownloadPage]
class SpeechDownloadRoute extends _i7.PageRouteInfo<void> {
  const SpeechDownloadRoute()
      : super(SpeechDownloadRoute.name, path: '/download');

  static const String name = 'SpeechDownloadRoute';
}

/// generated route for
/// [_i5.EjerciciosListPage]
class EjerciciosListRoute extends _i7.PageRouteInfo<void> {
  const EjerciciosListRoute()
      : super(EjerciciosListRoute.name, path: '/ejercicios');

  static const String name = 'EjerciciosListRoute';
}

/// generated route for
/// [_i6.LecturaEjercicioPage]
class LecturaEjercicioRoute extends _i7.PageRouteInfo<void> {
  const LecturaEjercicioRoute()
      : super(LecturaEjercicioRoute.name, path: '/lectura_ejercicio');

  static const String name = 'LecturaEjercicioRoute';
}
