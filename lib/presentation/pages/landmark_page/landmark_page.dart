import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/domain/entities/region/landmark_entity.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class LandmarkPage extends StatelessWidget {
  final LandmarkEntity landmark;

  const LandmarkPage({
    super.key,
    required this.landmark,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Достопримечательность',
          style: AppTextStyles.underTitle.copyWith(fontWeight: FontWeight.w700),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                    itemCount: landmark.photos.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        width: 300.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.6.r,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: CachedNetworkImage(
                            imageUrl: landmark.photos[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                    ),
                  ),
                  20.h.heightBox,
                  Container(
                    width: 80.w,
                    height: 23.h,
                    decoration: BoxDecoration(
                      color: AppColors.pink1,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      landmark.category,
                      style: AppTextStyles.label.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  5.h.heightBox,
                  Text(
                    landmark.name,
                    style: AppTextStyles.appBar,
                  ),
                  10.h.heightBox,
                  Text(
                    'Часы работы: ${landmark.openingHours}',
                    style: AppTextStyles.underTitle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    'Стоимость посещения: ${landmark.cost}',
                    style: AppTextStyles.underTitle.copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
              20.h.heightBox,
              Divider(
                thickness: 2.r,
              ),
              20.h.heightBox,
              Container(
                height: 80.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20.r,
                    ),
                    5.h.heightBox,
                    Text(
                      'Показать на карте',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.label.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              20.h.heightBox,
              Divider(
                thickness: 2.r,
              ),
              30.h.heightBox,
              Text(
                'Описание:',
                style: AppTextStyles.underTitle
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              10.h.heightBox,
              Text(
                landmark.description,
                style: AppTextStyles.underTitle,
              ),
              20.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
