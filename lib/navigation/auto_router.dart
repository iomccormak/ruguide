import 'package:auto_route/auto_route.dart';
import 'package:ruguide/presentation/pages/landmark_page/landmark_page.dart';
import 'package:ruguide/presentation/pages/map_page/map_page.dart';
import 'package:ruguide/presentation/pages/CORE/core_page.dart';
import 'package:ruguide/presentation/pages/home_page/home_page.dart';
import 'package:ruguide/presentation/pages/new_place/new_place_page.dart';
import 'package:ruguide/presentation/pages/region/region_page.dart';
import 'package:ruguide/presentation/pages/regions/regions_page.dart';
import 'package:ruguide/presentation/pages/splash_page/splash_page.dart';
import 'package:ruguide/presentation/pages/town_page/town_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: CorePage,
    ),
    AutoRoute(
      page: HomePage,
      initial: true,
    ),
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(
      page: MapPage,
    ),
    AutoRoute(
      page: RegionsPage,
    ),
    AutoRoute(
      page: RegionPage,
    ),
    AutoRoute(
      page: TownPage,
    ),
    AutoRoute(
      page: LandmarkPage,
    ),
    AutoRoute(
      page: NewPlacePage,
    ),
  ],
)
class $AutoRouter {}
