import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_point.freezed.dart';

part 'location_point.g.dart';

@freezed
class LocationPoint with _$LocationPoint {
  const factory LocationPoint({
    required double lat,
    required double long,
  }) = _LocationPoint;

  static LocationPoint getEmpty() {
    return const LocationPoint(
      lat: 55.7522200,
      long: 37.6155600,
    );
  }

  factory LocationPoint.fromJson(Map<String, dynamic> json) =>
      _$LocationPointFromJson(json);
}
