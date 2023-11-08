// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationPoint _$LocationPointFromJson(Map<String, dynamic> json) {
  return _LocationPoint.fromJson(json);
}

/// @nodoc
mixin _$LocationPoint {
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationPointCopyWith<LocationPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPointCopyWith<$Res> {
  factory $LocationPointCopyWith(
          LocationPoint value, $Res Function(LocationPoint) then) =
      _$LocationPointCopyWithImpl<$Res, LocationPoint>;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class _$LocationPointCopyWithImpl<$Res, $Val extends LocationPoint>
    implements $LocationPointCopyWith<$Res> {
  _$LocationPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationPointImplCopyWith<$Res>
    implements $LocationPointCopyWith<$Res> {
  factory _$$LocationPointImplCopyWith(
          _$LocationPointImpl value, $Res Function(_$LocationPointImpl) then) =
      __$$LocationPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$$LocationPointImplCopyWithImpl<$Res>
    extends _$LocationPointCopyWithImpl<$Res, _$LocationPointImpl>
    implements _$$LocationPointImplCopyWith<$Res> {
  __$$LocationPointImplCopyWithImpl(
      _$LocationPointImpl _value, $Res Function(_$LocationPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$LocationPointImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationPointImpl implements _LocationPoint {
  const _$LocationPointImpl({required this.lat, required this.long});

  factory _$LocationPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationPointImplFromJson(json);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'LocationPoint(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPointImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPointImplCopyWith<_$LocationPointImpl> get copyWith =>
      __$$LocationPointImplCopyWithImpl<_$LocationPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationPointImplToJson(
      this,
    );
  }
}

abstract class _LocationPoint implements LocationPoint {
  const factory _LocationPoint(
      {required final double lat,
      required final double long}) = _$LocationPointImpl;

  factory _LocationPoint.fromJson(Map<String, dynamic> json) =
      _$LocationPointImpl.fromJson;

  @override
  double get lat;
  @override
  double get long;
  @override
  @JsonKey(ignore: true)
  _$$LocationPointImplCopyWith<_$LocationPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
