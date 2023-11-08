import 'package:auto_route/auto_route.dart';
import 'package:ruguide/presentation/pages/CORE/core_page.dart';
import 'package:ruguide/presentation/pages/home_page/home_page.dart';
import 'package:ruguide/presentation/pages/splash_page/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: CorePage,
      initial: true,
    ),
    AutoRoute(
      page: HomePage,
    ),
    AutoRoute(
      page: SplashPage,
    )
  ],
)
class $AutoRouter {}
