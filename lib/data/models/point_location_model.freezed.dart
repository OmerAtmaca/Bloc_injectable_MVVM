// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointLocationModel _$PointLocationModelFromJson(Map<String, dynamic> json) {
  return _PointLocationModel.fromJson(json);
}

/// @nodoc
mixin _$PointLocationModel {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointLocationModelCopyWith<PointLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointLocationModelCopyWith<$Res> {
  factory $PointLocationModelCopyWith(
          PointLocationModel value, $Res Function(PointLocationModel) then) =
      _$PointLocationModelCopyWithImpl<$Res, PointLocationModel>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$PointLocationModelCopyWithImpl<$Res, $Val extends PointLocationModel>
    implements $PointLocationModelCopyWith<$Res> {
  _$PointLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PointLocationModelCopyWith<$Res>
    implements $PointLocationModelCopyWith<$Res> {
  factory _$$_PointLocationModelCopyWith(_$_PointLocationModel value,
          $Res Function(_$_PointLocationModel) then) =
      __$$_PointLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$_PointLocationModelCopyWithImpl<$Res>
    extends _$PointLocationModelCopyWithImpl<$Res, _$_PointLocationModel>
    implements _$$_PointLocationModelCopyWith<$Res> {
  __$$_PointLocationModelCopyWithImpl(
      _$_PointLocationModel _value, $Res Function(_$_PointLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_PointLocationModel(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointLocationModel implements _PointLocationModel {
  const _$_PointLocationModel({required this.lat, required this.lng});

  factory _$_PointLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PointLocationModelFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'PointLocationModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointLocationModel &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PointLocationModelCopyWith<_$_PointLocationModel> get copyWith =>
      __$$_PointLocationModelCopyWithImpl<_$_PointLocationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointLocationModelToJson(
      this,
    );
  }
}

abstract class _PointLocationModel implements PointLocationModel {
  const factory _PointLocationModel(
      {required final double lat,
      required final double lng}) = _$_PointLocationModel;

  factory _PointLocationModel.fromJson(Map<String, dynamic> json) =
      _$_PointLocationModel.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_PointLocationModelCopyWith<_$_PointLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
