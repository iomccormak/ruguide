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

  Future<void> _initPermission() async {
    if (!await AppLocationImpl().checkPermission()) {
      await AppLocationImpl().requestPermission();
    }
    await _fetchCurrentLocation();
  }

  Future<LocationPoint> _fetchCurrentLocation() async {
    LocationPoint location;
    final defLocation = LocationPoint.getEmpty();
    try {
      location = await AppLocationImpl().getCurrentLocation();
    } catch (_) {
      location = defLocation;
    }
    return location;
  }

  Future<void> _moveToCurrentLocation(
    Completer<YandexMapController> mapControllerCompleter,
  ) async {
    final locationPoint = await _fetchCurrentLocation();
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: locationPoint.lat,
            longitude: locationPoint.long,
          ),
          zoom: 12,
        ),
      ),
    );
  }
}
