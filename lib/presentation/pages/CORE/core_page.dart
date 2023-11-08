import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/navigation/auto_router.gr.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class CorePage extends StatelessWidget {
  const CorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            40.h.heightBox,
            Text(
              'Core page',
              style: AppTextStyles.title,
            ).toCenter(),
            20.h.heightBox,
            CoreButton(
              onTap: () => context.router.push(SplashRoute()),
              text: 'Splash page',
            ),
            CoreButton(onTap: () {}, text: 'Sign in Page'),
            CoreButton(onTap: () {}, text: 'Sign up Page'),
            CoreButton(onTap: () {}, text: '*Forgot password page'),
            CoreButton(onTap: () {}, text: '*Enter code Page'),
            CoreButton(
              onTap: () => context.router.push(HomeRoute()),
              text: 'Home page',
            ),
            CoreButton(onTap: () {}, text: 'Add a place Page'),
            CoreButton(onTap: () {}, text: 'Add a route Page'),
            CoreButton(onTap: () {}, text: 'Profile Page'),
            CoreButton(onTap: () {}, text: 'Settings Page'),
          ],
        ),
      ),
    );
  }
}

class CoreButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CoreButton({
    required this.onTap,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.h,
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyles.semiBold15.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
