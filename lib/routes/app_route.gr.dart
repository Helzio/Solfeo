// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../presentation/pages/lectura/acore/lectura_page.dart' as _i3;
import '../presentation/pages/lectura/libre/lectura_libre_page.dart' as _i4;
import '../presentation/pages/menu_principal/menu_principal_page.dart' as _i2;
import '../presentation/pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    MenuPrincipalRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MenuPrincipalPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LecturaRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.LecturaPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LecturaLibreRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.LecturaLibrePage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(MenuPrincipalRoute.name, path: '/menu'),
        _i5.RouteConfig(LecturaRoute.name, path: '/lectura'),
        _i5.RouteConfig(LecturaLibreRoute.name, path: '/lectura_libre')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MenuPrincipalPage]
class MenuPrincipalRoute extends _i5.PageRouteInfo<void> {
  const MenuPrincipalRoute() : super(MenuPrincipalRoute.name, path: '/menu');

  static const String name = 'MenuPrincipalRoute';
}

/// generated route for
/// [_i3.LecturaPage]
class LecturaRoute extends _i5.PageRouteInfo<void> {
  const LecturaRoute() : super(LecturaRoute.name, path: '/lectura');

  static const String name = 'LecturaRoute';
}

/// generated route for
/// [_i4.LecturaLibrePage]
class LecturaLibreRoute extends _i5.PageRouteInfo<void> {
  const LecturaLibreRoute()
      : super(LecturaLibreRoute.name, path: '/lectura_libre');

  static const String name = 'LecturaLibreRoute';
}
