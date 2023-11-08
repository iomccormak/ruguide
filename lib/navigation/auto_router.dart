import 'package:auto_route/auto_route.dart';
import 'package:ruguide/presentation/pages/CORE/core_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: CorePage,
      initial: true,
    ),
  ],
)
class $AutoRouter {}
