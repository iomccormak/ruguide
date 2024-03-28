import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruguide/domain/entities/location_point.dart';
import 'package:ruguide/domain/entities/region/landmark_entity.dart';
import 'package:ruguide/domain/entities/region/town_entity.dart';

part 'region_entity.freezed.dart';

part 'region_entity.g.dart';

@freezed
class RegionEntity with _$RegionEntity {
  const factory RegionEntity({
    required String flag,
    required String name,
    required String square,
    required String population,
    required List<String> photos,
    required List<TownEntity> towns,
    required List<LandmarkEntity> landmarks,
    String? history,
    String? culture,
    String? kitchen,
  }) = _RegionEntity;

  factory RegionEntity.fromJson(Map<String, dynamic> json) =>
      _$RegionEntityFromJson(json);
}
