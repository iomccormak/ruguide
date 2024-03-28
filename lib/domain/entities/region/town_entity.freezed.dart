// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'town_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TownEntity _$TownEntityFromJson(Map<String, dynamic> json) {
  return _TownEntity.fromJson(json);
}

/// @nodoc
mixin _$TownEntity {
  bool get isCapital => throw _privateConstructorUsedError;
  LocationPoint get locationPoint => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get population => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  String? get history => throw _privateConstructorUsedError;
  String? get culture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TownEntityCopyWith<TownEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownEntityCopyWith<$Res> {
  factory $TownEntityCopyWith(
          TownEntity value, $Res Function(TownEntity) then) =
      _$TownEntityCopyWithImpl<$Res, TownEntity>;
  @useResult
  $Res call(
      {bool isCapital,
      LocationPoint locationPoint,
      String name,
      String population,
      List<String> photos,
      String? history,
      String? culture});

  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class _$TownEntityCopyWithImpl<$Res, $Val extends TownEntity>
    implements $TownEntityCopyWith<$Res> {
  _$TownEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCapital = null,
    Object? locationPoint = null,
    Object? name = null,
    Object? population = null,
    Object? photos = null,
    Object? history = freezed,
    Object? culture = freezed,
  }) {
    return _then(_value.copyWith(
      isCapital: null == isCapital
          ? _value.isCapital
          : isCapital // ignore: cast_nullable_to_non_nullable
              as bool,
      locationPoint: null == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String?,
      culture: freezed == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$TownEntityImplCopyWith<$Res>
    implements $TownEntityCopyWith<$Res> {
  factory _$$TownEntityImplCopyWith(
          _$TownEntityImpl value, $Res Function(_$TownEntityImpl) then) =
      __$$TownEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCapital,
      LocationPoint locationPoint,
      String name,
      String population,
      List<String> photos,
      String? history,
      String? culture});

  @override
  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class __$$TownEntityImplCopyWithImpl<$Res>
    extends _$TownEntityCopyWithImpl<$Res, _$TownEntityImpl>
    implements _$$TownEntityImplCopyWith<$Res> {
  __$$TownEntityImplCopyWithImpl(
      _$TownEntityImpl _value, $Res Function(_$TownEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCapital = null,
    Object? locationPoint = null,
    Object? name = null,
    Object? population = null,
    Object? photos = null,
    Object? history = freezed,
    Object? culture = freezed,
  }) {
    return _then(_$TownEntityImpl(
      isCapital: null == isCapital
          ? _value.isCapital
          : isCapital // ignore: cast_nullable_to_non_nullable
              as bool,
      locationPoint: null == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String?,
      culture: freezed == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TownEntityImpl implements _TownEntity {
  const _$TownEntityImpl(
      {required this.isCapital,
      required this.locationPoint,
      required this.name,
      required this.population,
      required final List<String> photos,
      this.history,
      this.culture})
      : _photos = photos;

  factory _$TownEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TownEntityImplFromJson(json);

  @override
  final bool isCapital;
  @override
  final LocationPoint locationPoint;
  @override
  final String name;
  @override
  final String population;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final String? history;
  @override
  final String? culture;

  @override
  String toString() {
    return 'TownEntity(isCapital: $isCapital, locationPoint: $locationPoint, name: $name, population: $population, photos: $photos, history: $history, culture: $culture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TownEntityImpl &&
            (identical(other.isCapital, isCapital) ||
                other.isCapital == isCapital) &&
            (identical(other.locationPoint, locationPoint) ||
                other.locationPoint == locationPoint) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.population, population) ||
                other.population == population) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.history, history) || other.history == history) &&
            (identical(other.culture, culture) || other.culture == culture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCapital,
      locationPoint,
      name,
      population,
      const DeepCollectionEquality().hash(_photos),
      history,
      culture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TownEntityImplCopyWith<_$TownEntityImpl> get copyWith =>
      __$$TownEntityImplCopyWithImpl<_$TownEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TownEntityImplToJson(
      this,
    );
  }
}

abstract class _TownEntity implements TownEntity {
  const factory _TownEntity(
      {required final bool isCapital,
      required final LocationPoint locationPoint,
      required final String name,
      required final String population,
      required final List<String> photos,
      final String? history,
      final String? culture}) = _$TownEntityImpl;

  factory _TownEntity.fromJson(Map<String, dynamic> json) =
      _$TownEntityImpl.fromJson;

  @override
  bool get isCapital;
  @override
  LocationPoint get locationPoint;
  @override
  String get name;
  @override
  String get population;
  @override
  List<String> get photos;
  @override
  String? get history;
  @override
  String? get culture;
  @override
  @JsonKey(ignore: true)
  _$$TownEntityImplCopyWith<_$TownEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
