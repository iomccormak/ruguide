import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruguide/domain/entities/location_point.dart';

part 'landmark_entity.freezed.dart';

part 'landmark_entity.g.dart';

@freezed
class LandmarkEntity with _$LandmarkEntity {
  const factory LandmarkEntity({
    LocationPoint? locationPoint,
    required String name,
    required String description,
    required List<String> photos,
    required String openingHours,
    required String cost,
    required String category,
  }) = _LandmarkEntity;

  factory LandmarkEntity.fromJson(Map<String, dynamic> json) =>
      _$LandmarkEntityFromJson(json);
}
