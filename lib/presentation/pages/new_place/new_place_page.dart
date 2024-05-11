import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class NewPlacePage extends StatelessWidget {
  const NewPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Добавить место',
          style: AppTextStyles.underTitle.copyWith(fontWeight: FontWeight.w700),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            TextField(
              
            ),
            10.h.heightBox,
            TextField(
              maxLines: 10,
            ),
            10.h.heightBox,
            TextField(),
            10.h.heightBox,
            TextField(),
            10.h.heightBox,
            TextField(),
          ],
        ),
      ),
    );
  }
}
