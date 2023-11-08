import 'package:ruguide/domain/entities/location_point.dart';

abstract class AppLocation {
 Future<LocationPoint> getCurrentLocation();

 Future<bool> requestPermission();

 Future<bool> checkPermission();
}