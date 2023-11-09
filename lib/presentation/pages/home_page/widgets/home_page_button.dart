import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class HomePageButton extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final IconData icon;
  final VoidCallback onTap;
  final bool small;

  const HomePageButton({
    super.key,
    required this.text,
    required this.colors,
    required this.icon,
    required this.onTap,
    this.small = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.grey4.withOpacity(0.1),
      child: Ink(
        width: small ? 150.w : double.infinity,
        height: small ? 120.h : 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: colors,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey3.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.white,
              size: small ? 33.r : 37.r,
            ),
            8.h.heightBox,
            Text(
              text,
              style: small
                  ? AppTextStyles.semiBold15.copyWith(color: AppColors.white)
                  : AppTextStyles.semiBold18.copyWith(color: AppColors.white),
            ),
            16.h.heightBox,
          ],
        ),
      ),
    );
  }
}
