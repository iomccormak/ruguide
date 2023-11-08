// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) {
  return _PlaceModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceModel {
  String get id => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  LocationPoint get locationPoint => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  DateTime get timeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
          PlaceModel value, $Res Function(PlaceModel) then) =
      _$PlaceModelCopyWithImpl<$Res, PlaceModel>;
  @useResult
  $Res call(
      {String id,
      String creatorId,
      LocationPoint locationPoint,
      String name,
      String description,
      double? rating,
      int? reviewCount,
      DateTime timeStamp});

  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class _$PlaceModelCopyWithImpl<$Res, $Val extends PlaceModel>
    implements $PlaceModelCopyWith<$Res> {
  _$PlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? locationPoint = null,
    Object? name = null,
    Object? description = null,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? timeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      locationPoint: null == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res> get locationPoint {
    return $LocationPointCopyWith<$Res>(_value.locationPoint, (value) {
      return _then(_value.copyWith(locationPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceModelImplCopyWith<$Res>
    implements $PlaceModelCopyWith<$Res> {
  factory _$$PlaceModelImplCopyWith(
          _$PlaceModelImpl value, $Res Function(_$PlaceModelImpl) then) =
      __$$PlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String creatorId,
      LocationPoint locationPoint,
      String name,
      String description,
      double? rating,
      int? reviewCount,
      DateTime timeStamp});

  @override
  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class __$$PlaceModelImplCopyWithImpl<$Res>
    extends _$PlaceModelCopyWithImpl<$Res, _$PlaceModelImpl>
    implements _$$PlaceModelImplCopyWith<$Res> {
  __$$PlaceModelImplCopyWithImpl(
      _$PlaceModelImpl _value, $Res Function(_$PlaceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? locationPoint = null,
    Object? name = null,
    Object? description = null,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? timeStamp = null,
  }) {
    return _then(_$PlaceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      locationPoint: null == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceModelImpl implements _PlaceModel {
  const _$PlaceModelImpl(
      {required this.id,
      required this.creatorId,
      required this.locationPoint,
      required this.name,
      required this.description,
      this.rating,
      this.reviewCount,
      required this.timeStamp});

  factory _$PlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceModelImplFromJson(json);

  @override
  final String id;
  @override
  final String creatorId;
  @override
  final LocationPoint locationPoint;
  @override
  final String name;
  @override
  final String description;
  @override
  final double? rating;
  @override
  final int? reviewCount;
  @override
  final DateTime timeStamp;

  @override
  String toString() {
    return 'PlaceModel(id: $id, creatorId: $creatorId, locationPoint: $locationPoint, name: $name, description: $description, rating: $rating, reviewCount: $reviewCount, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.locationPoint, locationPoint) ||
                other.locationPoint == locationPoint) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, creatorId, locationPoint,
      name, description, rating, reviewCount, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      __$$PlaceModelImplCopyWithImpl<_$PlaceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceModel implements PlaceModel {
  const factory _PlaceModel(
      {required final String id,
      required final String creatorId,
      required final LocationPoint locationPoint,
      required final String name,
      required final String description,
      final double? rating,
      final int? reviewCount,
      required final DateTime timeStamp}) = _$PlaceModelImpl;

  factory _PlaceModel.fromJson(Map<String, dynamic> json) =
      _$PlaceModelImpl.fromJson;

  @override
  String get id;
  @override
  String get creatorId;
  @override
  LocationPoint get locationPoint;
  @override
  String get name;
  @override
  String get description;
  @override
  double? get rating;
  @override
  int? get reviewCount;
  @override
  DateTime get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
