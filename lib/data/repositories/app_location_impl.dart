import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:ruguide/domain/entities/location_point.dart';
import 'package:ruguide/domain/repositories/app_location.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class AppLocationImpl implements AppLocation {
  final defLocation = LocationPoint.getEmpty();

  @override
  Future<bool> checkPermission() {
    return Geolocator.checkPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }

  @override
  Future<LocationPoint> getCurrentLocation() async {
    return Geolocator.getCurrentPosition().then((value) {
      return LocationPoint(lat: value.latitude, long: value.longitude);
    }).catchError(
      (_) => defLocation,
    );
  }

  @override
  Future<bool> requestPermission() {
    return Geolocator.requestPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }
}
