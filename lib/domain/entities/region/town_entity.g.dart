// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'town_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TownEntityImpl _$$TownEntityImplFromJson(Map<String, dynamic> json) =>
    _$TownEntityImpl(
      isCapital: json['isCapital'] as bool,
      locationPoint:
          LocationPoint.fromJson(json['locationPoint'] as Map<String, dynamic>),
      name: json['name'] as String,
      population: json['population'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      history: json['history'] as String?,
      culture: json['culture'] as String?,
    );

Map<String, dynamic> _$$TownEntityImplToJson(_$TownEntityImpl instance) =>
    <String, dynamic>{
      'isCapital': instance.isCapital,
      'locationPoint': instance.locationPoint,
      'name': instance.name,
      'population': instance.population,
      'photos': instance.photos,
      'history': instance.history,
      'culture': instance.culture,
    };
