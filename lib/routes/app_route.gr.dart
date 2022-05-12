// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../presentation/pages/ejercicios/ejercicio/lectura_ejercicio_page.dart'
    as _i9;
import '../presentation/pages/ejercicios/list/ejercicios_list_page.dart' as _i8;
import '../presentation/pages/lectura/libre/lectura_libre_page.dart' as _i6;
import '../presentation/pages/login/login_page.dart' as _i3;
import '../presentation/pages/menu_principal/menu_principal_page.dart' as _i5;
import '../presentation/pages/onboard/onboard_page.dart' as _i2;
import '../presentation/pages/register/register_page.dart' as _i4;
import '../presentation/pages/speech/download/speech_download_page.dart' as _i7;
import '../presentation/pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    OnboardRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.OnboardPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LoginRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.LoginPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.RegisterPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    MenuPrincipalRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MenuPrincipalPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LecturaLibreRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.LecturaLibrePage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SpeechDownloadRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.SpeechDownloadPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    },
    EjerciciosListRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.EjerciciosListPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    },
    LecturaEjercicioRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.LecturaEjercicioPage(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/'),
        _i10.RouteConfig(OnboardRoute.name, path: '/welcome'),
        _i10.RouteConfig(LoginRoute.name, path: '/login'),
        _i10.RouteConfig(RegisterRoute.name, path: '/register'),
        _i10.RouteConfig(MenuPrincipalRoute.name, path: '/menu'),
        _i10.RouteConfig(LecturaLibreRoute.name, path: '/lectura_libre'),
        _i10.RouteConfig(SpeechDownloadRoute.name, path: '/download'),
        _i10.RouteConfig(EjerciciosListRoute.name, path: '/ejercicios'),
        _i10.RouteConfig(LecturaEjercicioRoute.name, path: '/lectura_ejercicio')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.OnboardPage]
class OnboardRoute extends _i10.PageRouteInfo<void> {
  const OnboardRoute() : super(OnboardRoute.name, path: '/welcome');

  static const String name = 'OnboardRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i5.MenuPrincipalPage]
class MenuPrincipalRoute extends _i10.PageRouteInfo<void> {
  const MenuPrincipalRoute() : super(MenuPrincipalRoute.name, path: '/menu');

  static const String name = 'MenuPrincipalRoute';
}

/// generated route for
/// [_i6.LecturaLibrePage]
class LecturaLibreRoute extends _i10.PageRouteInfo<void> {
  const LecturaLibreRoute()
      : super(LecturaLibreRoute.name, path: '/lectura_libre');

  static const String name = 'LecturaLibreRoute';
}

/// generated route for
/// [_i7.SpeechDownloadPage]
class SpeechDownloadRoute extends _i10.PageRouteInfo<void> {
  const SpeechDownloadRoute()
      : super(SpeechDownloadRoute.name, path: '/download');

  static const String name = 'SpeechDownloadRoute';
}

/// generated route for
/// [_i8.EjerciciosListPage]
class EjerciciosListRoute extends _i10.PageRouteInfo<void> {
  const EjerciciosListRoute()
      : super(EjerciciosListRoute.name, path: '/ejercicios');

  static const String name = 'EjerciciosListRoute';
}

/// generated route for
/// [_i9.LecturaEjercicioPage]
class LecturaEjercicioRoute extends _i10.PageRouteInfo<void> {
  const LecturaEjercicioRoute()
      : super(LecturaEjercicioRoute.name, path: '/lectura_ejercicio');

  static const String name = 'LecturaEjercicioRoute';
}
