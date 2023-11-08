// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceModelImpl _$$PlaceModelImplFromJson(Map<String, dynamic> json) =>
    _$PlaceModelImpl(
      id: json['id'] as String,
      creatorId: json['creatorId'] as String,
      locationPoint:
          LocationPoint.fromJson(json['locationPoint'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: json['reviewCount'] as int?,
      timeStamp: DateTime.parse(json['timeStamp'] as String),
    );

Map<String, dynamic> _$$PlaceModelImplToJson(_$PlaceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'locationPoint': instance.locationPoint,
      'name': instance.name,
      'description': instance.description,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'timeStamp': instance.timeStamp.toIso8601String(),
    };
