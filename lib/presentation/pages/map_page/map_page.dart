import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruguide/data/repositories/app_location_impl.dart';
import 'package:ruguide/domain/entities/location_point.dart';
import 'package:ruguide/presentation/utils/app_colors.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  final LocationPoint locationPoint;
  final String name;

  const MapPage({
    super.key,
    required this.locationPoint,
    required this.name,
  });

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late final YandexMapController _mapController;
  var _mapZoom = 0.0;

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.name,
          style: AppTextStyles.underTitle.copyWith(fontWeight: FontWeight.w700),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: YandexMap(
        onMapCreated: (controller) async {
          _mapController = controller;
          await _mapController.moveCamera(CameraUpdate.newCameraPosition(
            const CameraPosition(
              target: Point(
                latitude: 61.813049,
                longitude: 91.820443,
              ),
              zoom: 2,
            ),
          ));
        },
        onCameraPositionChanged: (cameraPosition, _, __) {
          setState(() {
            _mapZoom = cameraPosition.zoom;
          });
        },
        mapObjects: [
          _getClusterizedCollection(
            placemarks: [
              _getPlacemarkObjects(
                context,
                widget.locationPoint,
                widget.name,
              )
            ],
          ),
        ],
      ),
    );
  }

  ClusterizedPlacemarkCollection _getClusterizedCollection({
    required List<PlacemarkMapObject> placemarks,
  }) {
    return ClusterizedPlacemarkCollection(
        mapId: const MapObjectId('clusterized-1'),
        placemarks: placemarks,
        radius: 50,
        minZoom: 15,
        onClusterAdded: (self, cluster) async {
          return cluster.copyWith(
            appearance: cluster.appearance.copyWith(
              opacity: 1.0,
            ),
          );
        },
        onClusterTap: (self, cluster) async {
          await _mapController.moveCamera(
            animation: const MapAnimation(
              type: MapAnimationType.linear,
              duration: 0.3,
            ),
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: cluster.placemarks.first.point,
                zoom: _mapZoom + 1,
              ),
            ),
          );
        });
  }
}

/// Метод для генерации объектов маркеров для отображения на карте
PlacemarkMapObject _getPlacemarkObjects(
  BuildContext context,
  LocationPoint point,
  String name,
) {
  return PlacemarkMapObject(
    mapId: MapObjectId('MapObject $point'),
    point: Point(latitude: point.lat, longitude: point.long),
    opacity: 1,
    icon: PlacemarkIcon.single(
      PlacemarkIconStyle(
        image: BitmapDescriptor.fromAssetImage(
          'assets/icons/location-2955.png',
        ),
        scale: 0.2,
      ),
    ),
    onTap: (_, __) => showModalBottomSheet(
      context: context,
      builder: (context) => _ModalBodyView(point: point, name: name),
    ),
  );
}

/// Содержимое модального окна с информацией о точке на карте
class _ModalBodyView extends StatelessWidget {
  const _ModalBodyView({
    required this.point,
    required this.name,
  });

  final LocationPoint point;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 40.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: Divider(
              thickness: 5,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '${point.lat}, ${point.long}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
