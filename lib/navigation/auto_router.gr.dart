// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../presentation/pages/map_page/map_page.dart' as _i4;
import '../presentation/pages/CORE/core_page.dart' as _i1;
import '../presentation/pages/home_page/home_page.dart' as _i2;
import '../presentation/pages/splash_page/splash_page.dart' as _i3;

class AutoRouter extends _i5.RootStackRouter {
  AutoRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CoreRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.CorePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.MapPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          CoreRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i5.RouteConfig(
          MapRoute.name,
          path: '/map-page',
        ),
      ];
}

/// generated route for
/// [_i1.CorePage]
class CoreRoute extends _i5.PageRouteInfo<void> {
  const CoreRoute()
      : super(
          CoreRoute.name,
          path: '/',
        );

  static const String name = 'CoreRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i4.MapPage]
class MapRoute extends _i5.PageRouteInfo<void> {
  const MapRoute()
      : super(
          MapRoute.name,
          path: '/map-page',
        );

  static const String name = 'MapRoute';
}
