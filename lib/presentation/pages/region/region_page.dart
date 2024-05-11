import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/domain/entities/region/region_entity.dart';
import 'package:ruguide/navigation/auto_router.gr.dart';
import 'package:ruguide/presentation/pages/region/widgets/expandable_text_field.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class RegionPage extends StatelessWidget {
  final RegionEntity region;

  const RegionPage({
    super.key,
    required this.region,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Регион',
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
                    itemCount: region.photos.length,
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
                            imageUrl: region.photos[index],
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
                    height: 20.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.2.r,
                      ),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: region.flag,
                      fit: BoxFit.cover,
                    ),
                  ),
                  10.h.heightBox,
                  Text(
                    region.name,
                    style: AppTextStyles.appBar,
                  ),
                  Text(
                    'Площадь: ${region.square}',
                    style: AppTextStyles.underTitle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    'Население: ${region.population}',
                    style: AppTextStyles.underTitle.copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
              10.h.heightBox,
              Divider(
                thickness: 2.r,
              ),
              10.h.heightBox,
              Text(
                'Крупнейшие города:',
                style: AppTextStyles.underTitle
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              10.h.heightBox,
              SizedBox(
                height: 60.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: region.towns.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: GestureDetector(
                        onTap: () => context.router.push(
                          TownRoute(
                            town: region.towns[index],
                          ),
                        ),
                        child: Container(
                          width: 150.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            region.towns[index].name,
                            style: AppTextStyles.label.copyWith(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              10.h.heightBox,
              Text(
                'Достопримечательности:',
                style: AppTextStyles.underTitle
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              10.h.heightBox,
              SizedBox(
                height: 60.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: region.landmarks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: GestureDetector(
                        onTap: () => context.router.push(
                          LandmarkRoute(
                            landmark: region.landmarks[index],
                          ),
                        ),
                        child: Container(
                          width: 150.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: AppColors.pink1,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            region.landmarks[index].name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.label.copyWith(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              20.h.heightBox,
              Divider(
                thickness: 2.r,
              ),
              if (region.history != null) ...[
                10.h.heightBox,
                ExpandableTextWidget(
                  title: 'История',
                  content: region.history!,
                ),
              ],
              if (region.culture != null) ...[
                10.h.heightBox,
                ExpandableTextWidget(
                  title: 'Культура',
                  content: region.culture!,
                ),
              ],
              if (region.culture != null) ...[
                10.h.heightBox,
                ExpandableTextWidget(
                  title: 'Кухня',
                  content: region.kitchen!,
                ),
              ],
              20.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
