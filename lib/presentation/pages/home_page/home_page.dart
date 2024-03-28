import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/navigation/auto_router.gr.dart';
import 'package:ruguide/presentation/pages/home_page/widgets/home_page_button.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            50.h.heightBox,
            Text(
              'RuGuide',
              style: AppTextStyles.title,
            ),
            30.h.heightBox,
            HomePageButton(
              text: 'Регионы страны',
              colors: const [
                AppColors.primaryColor,
                AppColors.lightPrimaryColor,
              ],
              icon: Icons.map_outlined,
              onTap: () {
                context.router.push(RegionsRoute());
              },
            ),
            20.h.heightBox,
            
          ],
        ),
      ).paddingSymmetric(horizontal: 30.w),
    );
  }
}
