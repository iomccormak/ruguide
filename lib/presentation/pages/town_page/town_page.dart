import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/domain/entities/region/town_entity.dart';
import 'package:ruguide/navigation/auto_router.gr.dart';
import 'package:ruguide/presentation/pages/region/widgets/expandable_text_field.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class TownPage extends StatelessWidget {
  final TownEntity town;

  const TownPage({
    super.key,
    required this.town,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Город',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                    itemCount: town.photos.length,
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
                            imageUrl: town.photos[index],
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
                  if (town.isCapital) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_border_purple500,
                          size: 15.r,
                          color: const Color.fromARGB(255, 78, 78, 78),
                        ),
                        3.w.widthBox,
                        Text(
                          'Столица региона',
                          style: AppTextStyles.underTitle
                              .copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),
                    10.h.heightBox,
                  ],
                  Text(
                    town.name,
                    style: AppTextStyles.appBar,
                  ),
                  10.h.heightBox,
                  Text(
                    'Население: ${town.population}',
                    style: AppTextStyles.underTitle.copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
              20.h.heightBox,
              Divider(
                thickness: 2.r,
              ),
              20.h.heightBox,
              GestureDetector(
                onTap: () => context.router.push(
                  MapRoute(
                    locationPoint: town.locationPoint,
                    name: town.name,
                  ),
                ),
                child: Container(
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
              ),
              20.h.heightBox,
              Divider(
                thickness: 2.r,
              ),
              if (town.history != null) ...[
                10.h.heightBox,
                ExpandableTextWidget(
                  title: 'История',
                  content: town.history!,
                ),
              ],
              if (town.culture != null) ...[
                10.h.heightBox,
                ExpandableTextWidget(
                  title: 'Культура',
                  content: town.culture!,
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
