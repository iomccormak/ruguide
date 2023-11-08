import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/navigation/auto_router.gr.dart';
import 'package:ruguide/di/locator.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

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
              colorScheme:
                  ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
              scaffoldBackgroundColor: AppColors.backgroundColor,
              fontFamily: "Montserrat",
              appBarTheme: AppBarTheme(
                /*systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: AppColors.mainMenuItemShadowColor,
                  statusBarIconBrightness: Brightness.light,
                  statusBarBrightness: Brightness.dark,
                ),*/
                elevation: 0,
                centerTitle: true,
                backgroundColor: AppColors.backgroundColor,
                titleTextStyle: AppTextStyles.appBar,
                
              ),
            ),
            routerDelegate: _autoRouter.delegate(),
            routeInformationParser: _autoRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }
}
