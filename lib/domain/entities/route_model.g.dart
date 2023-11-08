// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteModelImpl _$$RouteModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteModelImpl(
      id: json['id'] as String,
      creatorId: json['creatorId'] as String,
      places: (json['places'] as List<dynamic>)
          .map((e) => PlaceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: json['reviewCount'] as int?,
      timeStamp: DateTime.parse(json['timeStamp'] as String),
    );

Map<String, dynamic> _$$RouteModelImplToJson(_$RouteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'places': instance.places,
      'name': instance.name,
      'description': instance.description,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'timeStamp': instance.timeStamp.toIso8601String(),
    };
