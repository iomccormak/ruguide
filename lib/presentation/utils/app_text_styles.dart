import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';

abstract class AppTextStyles {
  final semiBold50 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontFamily: "Montserrat",
  );

  static final semiBold26 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.white,
    fontFamily: "Montserrat",
  );

  static final semiBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontFamily: "Montserrat",
  );

  static final semiBold15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontFamily: "Montserrat",
  );

  static final appBar = TextStyle(
    color: AppColors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    fontFamily: "Montserrat",
  );

  static final title = TextStyle(
    color: AppColors.black,
    fontSize: 36.sp,
    fontWeight: FontWeight.w800,
    fontFamily: "Montserrat",
  );

  static final underTitle = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
  );

  static final label = AppTextStyles.semiBold18.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
}
