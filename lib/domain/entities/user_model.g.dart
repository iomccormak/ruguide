// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      photoUrl: json['photoUrl'] as String?,
      provider: json['provider'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      placesCount: json['placesCount'] as int?,
      routesCount: json['routesCount'] as int?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'provider': instance.provider,
      'rating': instance.rating,
      'placesCount': instance.placesCount,
      'routesCount': instance.routesCount,
    };
