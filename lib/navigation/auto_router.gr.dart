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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../domain/entities/region/landmark_entity.dart' as _i13;
import '../domain/entities/region/region_entity.dart' as _i11;
import '../domain/entities/region/town_entity.dart' as _i12;
import '../presentation/pages/CORE/core_page.dart' as _i1;
import '../presentation/pages/home_page/home_page.dart' as _i2;
import '../presentation/pages/landmark_page/landmark_page.dart' as _i8;
import '../presentation/pages/map_page/map_page.dart' as _i4;
import '../presentation/pages/region/region_page.dart' as _i6;
import '../presentation/pages/regions/regions_page.dart' as _i5;
import '../presentation/pages/splash_page/splash_page.dart' as _i3;
import '../presentation/pages/town_page/town_page.dart' as _i7;

class AutoRouter extends _i9.RootStackRouter {
  AutoRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CoreRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.CorePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.MapPage(),
      );
    },
    RegionsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.RegionsPage(),
      );
    },
    RegionRoute.name: (routeData) {
      final args = routeData.argsAs<RegionRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.RegionPage(
          key: args.key,
          region: args.region,
        ),
      );
    },
    TownRoute.name: (routeData) {
      final args = routeData.argsAs<TownRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.TownPage(
          key: args.key,
          town: args.town,
        ),
      );
    },
    LandmarkRoute.name: (routeData) {
      final args = routeData.argsAs<LandmarkRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.LandmarkPage(
          key: args.key,
          landmark: args.landmark,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          CoreRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i9.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i9.RouteConfig(
          MapRoute.name,
          path: '/map-page',
        ),
        _i9.RouteConfig(
          RegionsRoute.name,
          path: '/regions-page',
        ),
        _i9.RouteConfig(
          RegionRoute.name,
          path: '/region-page',
        ),
        _i9.RouteConfig(
          TownRoute.name,
          path: '/town-page',
        ),
        _i9.RouteConfig(
          LandmarkRoute.name,
          path: '/landmark-page',
        ),
      ];
}

/// generated route for
/// [_i1.CorePage]
class CoreRoute extends _i9.PageRouteInfo<void> {
  const CoreRoute()
      : super(
          CoreRoute.name,
          path: '/',
        );

  static const String name = 'CoreRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i4.MapPage]
class MapRoute extends _i9.PageRouteInfo<void> {
  const MapRoute()
      : super(
          MapRoute.name,
          path: '/map-page',
        );

  static const String name = 'MapRoute';
}

/// generated route for
/// [_i5.RegionsPage]
class RegionsRoute extends _i9.PageRouteInfo<void> {
  const RegionsRoute()
      : super(
          RegionsRoute.name,
          path: '/regions-page',
        );

  static const String name = 'RegionsRoute';
}

/// generated route for
/// [_i6.RegionPage]
class RegionRoute extends _i9.PageRouteInfo<RegionRouteArgs> {
  RegionRoute({
    _i10.Key? key,
    required _i11.RegionEntity region,
  }) : super(
          RegionRoute.name,
          path: '/region-page',
          args: RegionRouteArgs(
            key: key,
            region: region,
          ),
        );

  static const String name = 'RegionRoute';
}

class RegionRouteArgs {
  const RegionRouteArgs({
    this.key,
    required this.region,
  });

  final _i10.Key? key;

  final _i11.RegionEntity region;

  @override
  String toString() {
    return 'RegionRouteArgs{key: $key, region: $region}';
  }
}

/// generated route for
/// [_i7.TownPage]
class TownRoute extends _i9.PageRouteInfo<TownRouteArgs> {
  TownRoute({
    _i10.Key? key,
    required _i12.TownEntity town,
  }) : super(
          TownRoute.name,
          path: '/town-page',
          args: TownRouteArgs(
            key: key,
            town: town,
          ),
        );

  static const String name = 'TownRoute';
}

class TownRouteArgs {
  const TownRouteArgs({
    this.key,
    required this.town,
  });

  final _i10.Key? key;

  final _i12.TownEntity town;

  @override
  String toString() {
    return 'TownRouteArgs{key: $key, town: $town}';
  }
}

/// generated route for
/// [_i8.LandmarkPage]
class LandmarkRoute extends _i9.PageRouteInfo<LandmarkRouteArgs> {
  LandmarkRoute({
    _i10.Key? key,
    required _i13.LandmarkEntity landmark,
  }) : super(
          LandmarkRoute.name,
          path: '/landmark-page',
          args: LandmarkRouteArgs(
            key: key,
            landmark: landmark,
          ),
        );

  static const String name = 'LandmarkRoute';
}

class LandmarkRouteArgs {
  const LandmarkRouteArgs({
    this.key,
    required this.landmark,
  });

  final _i10.Key? key;

  final _i13.LandmarkEntity landmark;

  @override
  String toString() {
    return 'LandmarkRouteArgs{key: $key, landmark: $landmark}';
  }
}
