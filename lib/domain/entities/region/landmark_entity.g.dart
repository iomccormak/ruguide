// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landmark_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LandmarkEntityImpl _$$LandmarkEntityImplFromJson(Map<String, dynamic> json) =>
    _$LandmarkEntityImpl(
      locationPoint: json['locationPoint'] == null
          ? null
          : LocationPoint.fromJson(
              json['locationPoint'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      openingHours: json['openingHours'] as String,
      cost: json['cost'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$LandmarkEntityImplToJson(
        _$LandmarkEntityImpl instance) =>
    <String, dynamic>{
      'locationPoint': instance.locationPoint,
      'name': instance.name,
      'description': instance.description,
      'photos': instance.photos,
      'openingHours': instance.openingHours,
      'cost': instance.cost,
      'category': instance.category,
    };
