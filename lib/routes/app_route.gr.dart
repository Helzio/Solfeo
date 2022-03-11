// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../presentation/pages/lectura/lectura_page.dart' as _i3;
import '../presentation/pages/menu_principal/menu_principal_page.dart' as _i2;
import '../presentation/pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    MenuPrincipalRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MenuPrincipalPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LecturaRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.LecturaPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(MenuPrincipalRoute.name, path: '/menu'),
        _i4.RouteConfig(LecturaRoute.name, path: '/lectura')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MenuPrincipalPage]
class MenuPrincipalRoute extends _i4.PageRouteInfo<void> {
  const MenuPrincipalRoute() : super(MenuPrincipalRoute.name, path: '/menu');

  static const String name = 'MenuPrincipalRoute';
}

/// generated route for
/// [_i3.LecturaPage]
class LecturaRoute extends _i4.PageRouteInfo<void> {
  const LecturaRoute() : super(LecturaRoute.name, path: '/lectura');

  static const String name = 'LecturaRoute';
}
