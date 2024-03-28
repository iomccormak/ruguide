// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionEntityImpl _$$RegionEntityImplFromJson(Map<String, dynamic> json) =>
    _$RegionEntityImpl(
      flag: json['flag'] as String,
      name: json['name'] as String,
      square: json['square'] as String,
      population: json['population'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      towns: (json['towns'] as List<dynamic>)
          .map((e) => TownEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      landmarks: (json['landmarks'] as List<dynamic>)
          .map((e) => LandmarkEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      history: json['history'] as String?,
      culture: json['culture'] as String?,
      kitchen: json['kitchen'] as String?,
    );

Map<String, dynamic> _$$RegionEntityImplToJson(_$RegionEntityImpl instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'name': instance.name,
      'square': instance.square,
      'population': instance.population,
      'photos': instance.photos,
      'towns': instance.towns,
      'landmarks': instance.landmarks,
      'history': instance.history,
      'culture': instance.culture,
      'kitchen': instance.kitchen,
    };
