// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landmark_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LandmarkEntity _$LandmarkEntityFromJson(Map<String, dynamic> json) {
  return _LandmarkEntity.fromJson(json);
}

/// @nodoc
mixin _$LandmarkEntity {
  LocationPoint? get locationPoint => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  String get openingHours => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandmarkEntityCopyWith<LandmarkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandmarkEntityCopyWith<$Res> {
  factory $LandmarkEntityCopyWith(
          LandmarkEntity value, $Res Function(LandmarkEntity) then) =
      _$LandmarkEntityCopyWithImpl<$Res, LandmarkEntity>;
  @useResult
  $Res call(
      {LocationPoint? locationPoint,
      String name,
      String description,
      List<String> photos,
      String openingHours,
      String cost,
      String category});

  $LocationPointCopyWith<$Res>? get locationPoint;
}

/// @nodoc
class _$LandmarkEntityCopyWithImpl<$Res, $Val extends LandmarkEntity>
    implements $LandmarkEntityCopyWith<$Res> {
  _$LandmarkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationPoint = freezed,
    Object? name = null,
    Object? description = null,
    Object? photos = null,
    Object? openingHours = null,
    Object? cost = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res>? get locationPoint {
    if (_value.locationPoint == null) {
      return null;
    }

    return $LocationPointCopyWith<$Res>(_value.locationPoint!, (value) {
      return _then(_value.copyWith(locationPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LandmarkEntityImplCopyWith<$Res>
    implements $LandmarkEntityCopyWith<$Res> {
  factory _$$LandmarkEntityImplCopyWith(_$LandmarkEntityImpl value,
          $Res Function(_$LandmarkEntityImpl) then) =
      __$$LandmarkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationPoint? locationPoint,
      String name,
      String description,
      List<String> photos,
      String openingHours,
      String cost,
      String category});

  @override
  $LocationPointCopyWith<$Res>? get locationPoint;
}

/// @nodoc
class __$$LandmarkEntityImplCopyWithImpl<$Res>
    extends _$LandmarkEntityCopyWithImpl<$Res, _$LandmarkEntityImpl>
    implements _$$LandmarkEntityImplCopyWith<$Res> {
  __$$LandmarkEntityImplCopyWithImpl(
      _$LandmarkEntityImpl _value, $Res Function(_$LandmarkEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationPoint = freezed,
    Object? name = null,
    Object? description = null,
    Object? photos = null,
    Object? openingHours = null,
    Object? cost = null,
    Object? category = null,
  }) {
    return _then(_$LandmarkEntityImpl(
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LandmarkEntityImpl implements _LandmarkEntity {
  const _$LandmarkEntityImpl(
      {this.locationPoint,
      required this.name,
      required this.description,
      required final List<String> photos,
      required this.openingHours,
      required this.cost,
      required this.category})
      : _photos = photos;

  factory _$LandmarkEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LandmarkEntityImplFromJson(json);

  @override
  final LocationPoint? locationPoint;
  @override
  final String name;
  @override
  final String description;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final String openingHours;
  @override
  final String cost;
  @override
  final String category;

  @override
  String toString() {
    return 'LandmarkEntity(locationPoint: $locationPoint, name: $name, description: $description, photos: $photos, openingHours: $openingHours, cost: $cost, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandmarkEntityImpl &&
            (identical(other.locationPoint, locationPoint) ||
                other.locationPoint == locationPoint) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      locationPoint,
      name,
      description,
      const DeepCollectionEquality().hash(_photos),
      openingHours,
      cost,
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LandmarkEntityImplCopyWith<_$LandmarkEntityImpl> get copyWith =>
      __$$LandmarkEntityImplCopyWithImpl<_$LandmarkEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LandmarkEntityImplToJson(
      this,
    );
  }
}

abstract class _LandmarkEntity implements LandmarkEntity {
  const factory _LandmarkEntity(
      {final LocationPoint? locationPoint,
      required final String name,
      required final String description,
      required final List<String> photos,
      required final String openingHours,
      required final String cost,
      required final String category}) = _$LandmarkEntityImpl;

  factory _LandmarkEntity.fromJson(Map<String, dynamic> json) =
      _$LandmarkEntityImpl.fromJson;

  @override
  LocationPoint? get locationPoint;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get photos;
  @override
  String get openingHours;
  @override
  String get cost;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$LandmarkEntityImplCopyWith<_$LandmarkEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
