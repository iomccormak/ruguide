import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/di/locator.dart';
import 'package:ruguide/navigation/auto_router.gr.dart';
import 'package:ruguide/presentation/pages/regions/bloc/regions_bloc.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class RegionsPage extends StatelessWidget {
  const RegionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<RegionsBloc>()..add(const RegionsEvent.started()),
      child: BlocConsumer<RegionsBloc, RegionsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Регионы',
                style: AppTextStyles.underTitle
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            body: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.regions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                  child: GestureDetector(
                    onTap: () => context.router.push(
                      RegionRoute(
                        region: state.regions[index],
                      ),
                    ),
                    child: Container(
                      height: 160.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 90.h,
                            width: double.infinity,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.6.r,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: state.regions[index].photos.isEmpty
                                  ? const SizedBox.shrink()
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            state.regions[index].photos.first,
                                        placeholder: (context, url) => Center(
                                          child: SizedBox(
                                            width: 20.r,
                                            height: 20.r,
                                            child:
                                                const CircularProgressIndicator(),
                                          ),
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                          10.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                  imageUrl: state.regions[index].flag,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              10.widthBox,
                              Text(
                                state.regions[index].name,
                                style: AppTextStyles.underTitle.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
