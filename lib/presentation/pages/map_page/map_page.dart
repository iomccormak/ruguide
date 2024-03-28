import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ruguide/data/repositories/app_location_impl.dart';
import 'package:ruguide/domain/entities/location_point.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final mapControllerCompleter = Completer<YandexMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.grey3,
          onPressed: context.router.pop,
        ),
        title: Text(
          'RuGuide',
          style: AppTextStyles.appBar,
        ),
      ),
      body: YandexMap(
        onMapCreated: (controller) {
          mapControllerCompleter.complete(controller);
        },
      ),
    );
  }
}
