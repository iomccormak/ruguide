import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruguide/domain/entities/location_point.dart';

part 'town_entity.freezed.dart';

part 'town_entity.g.dart';

@freezed
class TownEntity with _$TownEntity {
  const factory TownEntity({
    required bool isCapital,
    required LocationPoint locationPoint,
    required String name,
    required String population,
    required List<String> photos,
    String? history,
    String? culture,
  }) = _TownEntity;

  factory TownEntity.fromJson(Map<String, dynamic> json) =>
      _$TownEntityFromJson(json);
}
