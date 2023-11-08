import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/navigation/auto_router.gr.dart';
import 'package:ruguide/di/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _autoRouter = AutoRouter();

  @override
  void initState() {
    getIt.registerSingleton<AutoRouter>(_autoRouter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return DefaultTextHeightBehavior(
          textHeightBehavior: const TextHeightBehavior(
            leadingDistribution: TextLeadingDistribution.even,
          ),
          child: MaterialApp.router(
            title: 'RuGuide',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                /*colorScheme:
                  ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
              scaffoldBackgroundColor: AppColors.backgroundColor,
              appBarTheme: AppBarTheme(
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: AppColors.mainMenuItemShadowColor,
                  statusBarIconBrightness: Brightness.light,
                  statusBarBrightness: Brightness.dark,
                ),
                elevation: 0,
                centerTitle: false,
                backgroundColor: AppColors.mainMenuItemMainColor,
                titleTextStyle: AppTextStyles.bold16,
              ),*/
                ),
            routerDelegate: _autoRouter.delegate(),
            routeInformationParser: _autoRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }
}
