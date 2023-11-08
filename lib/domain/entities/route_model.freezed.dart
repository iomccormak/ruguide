// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouteModel _$RouteModelFromJson(Map<String, dynamic> json) {
  return _RouteModel.fromJson(json);
}

/// @nodoc
mixin _$RouteModel {
  String get id => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  List<PlaceModel> get places => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  DateTime get timeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteModelCopyWith<RouteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteModelCopyWith<$Res> {
  factory $RouteModelCopyWith(
          RouteModel value, $Res Function(RouteModel) then) =
      _$RouteModelCopyWithImpl<$Res, RouteModel>;
  @useResult
  $Res call(
      {String id,
      String creatorId,
      List<PlaceModel> places,
      String name,
      String description,
      double? rating,
      int? reviewCount,
      DateTime timeStamp});
}

/// @nodoc
class _$RouteModelCopyWithImpl<$Res, $Val extends RouteModel>
    implements $RouteModelCopyWith<$Res> {
  _$RouteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? places = null,
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
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
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
}

/// @nodoc
abstract class _$$RouteModelImplCopyWith<$Res>
    implements $RouteModelCopyWith<$Res> {
  factory _$$RouteModelImplCopyWith(
          _$RouteModelImpl value, $Res Function(_$RouteModelImpl) then) =
      __$$RouteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String creatorId,
      List<PlaceModel> places,
      String name,
      String description,
      double? rating,
      int? reviewCount,
      DateTime timeStamp});
}

/// @nodoc
class __$$RouteModelImplCopyWithImpl<$Res>
    extends _$RouteModelCopyWithImpl<$Res, _$RouteModelImpl>
    implements _$$RouteModelImplCopyWith<$Res> {
  __$$RouteModelImplCopyWithImpl(
      _$RouteModelImpl _value, $Res Function(_$RouteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? places = null,
    Object? name = null,
    Object? description = null,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? timeStamp = null,
  }) {
    return _then(_$RouteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
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
class _$RouteModelImpl implements _RouteModel {
  const _$RouteModelImpl(
      {required this.id,
      required this.creatorId,
      required final List<PlaceModel> places,
      required this.name,
      required this.description,
      this.rating,
      this.reviewCount,
      required this.timeStamp})
      : _places = places;

  factory _$RouteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteModelImplFromJson(json);

  @override
  final String id;
  @override
  final String creatorId;
  final List<PlaceModel> _places;
  @override
  List<PlaceModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

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
    return 'RouteModel(id: $id, creatorId: $creatorId, places: $places, name: $name, description: $description, rating: $rating, reviewCount: $reviewCount, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creatorId,
      const DeepCollectionEquality().hash(_places),
      name,
      description,
      rating,
      reviewCount,
      timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteModelImplCopyWith<_$RouteModelImpl> get copyWith =>
      __$$RouteModelImplCopyWithImpl<_$RouteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteModelImplToJson(
      this,
    );
  }
}

abstract class _RouteModel implements RouteModel {
  const factory _RouteModel(
      {required final String id,
      required final String creatorId,
      required final List<PlaceModel> places,
      required final String name,
      required final String description,
      final double? rating,
      final int? reviewCount,
      required final DateTime timeStamp}) = _$RouteModelImpl;

  factory _RouteModel.fromJson(Map<String, dynamic> json) =
      _$RouteModelImpl.fromJson;

  @override
  String get id;
  @override
  String get creatorId;
  @override
  List<PlaceModel> get places;
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
  _$$RouteModelImplCopyWith<_$RouteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
