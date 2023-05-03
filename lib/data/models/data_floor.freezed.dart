// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_floor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataFloor _$DataFloorFromJson(Map<String, dynamic> json) {
  return _DataFloor.fromJson(json);
}

/// @nodoc
mixin _$DataFloor {
  int get floor =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get photo_name =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  double get z_end =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  double get z_start => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataFloorCopyWith<DataFloor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataFloorCopyWith<$Res> {
  factory $DataFloorCopyWith(DataFloor value, $Res Function(DataFloor) then) =
      _$DataFloorCopyWithImpl<$Res, DataFloor>;
  @useResult
  $Res call({int floor, String photo_name, double z_end, double z_start});
}

/// @nodoc
class _$DataFloorCopyWithImpl<$Res, $Val extends DataFloor>
    implements $DataFloorCopyWith<$Res> {
  _$DataFloorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
    Object? photo_name = null,
    Object? z_end = null,
    Object? z_start = null,
  }) {
    return _then(_value.copyWith(
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      photo_name: null == photo_name
          ? _value.photo_name
          : photo_name // ignore: cast_nullable_to_non_nullable
              as String,
      z_end: null == z_end
          ? _value.z_end
          : z_end // ignore: cast_nullable_to_non_nullable
              as double,
      z_start: null == z_start
          ? _value.z_start
          : z_start // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataFloorCopyWith<$Res> implements $DataFloorCopyWith<$Res> {
  factory _$$_DataFloorCopyWith(
          _$_DataFloor value, $Res Function(_$_DataFloor) then) =
      __$$_DataFloorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int floor, String photo_name, double z_end, double z_start});
}

/// @nodoc
class __$$_DataFloorCopyWithImpl<$Res>
    extends _$DataFloorCopyWithImpl<$Res, _$_DataFloor>
    implements _$$_DataFloorCopyWith<$Res> {
  __$$_DataFloorCopyWithImpl(
      _$_DataFloor _value, $Res Function(_$_DataFloor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
    Object? photo_name = null,
    Object? z_end = null,
    Object? z_start = null,
  }) {
    return _then(_$_DataFloor(
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      photo_name: null == photo_name
          ? _value.photo_name
          : photo_name // ignore: cast_nullable_to_non_nullable
              as String,
      z_end: null == z_end
          ? _value.z_end
          : z_end // ignore: cast_nullable_to_non_nullable
              as double,
      z_start: null == z_start
          ? _value.z_start
          : z_start // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataFloor implements _DataFloor {
  const _$_DataFloor(
      {required this.floor,
      required this.photo_name,
      required this.z_end,
      required this.z_start});

  factory _$_DataFloor.fromJson(Map<String, dynamic> json) =>
      _$$_DataFloorFromJson(json);

  @override
  final int floor;
// ignore: non_constant_identifier_names
  @override
  final String photo_name;
// ignore: non_constant_identifier_names
  @override
  final double z_end;
// ignore: non_constant_identifier_names
  @override
  final double z_start;

  @override
  String toString() {
    return 'DataFloor(floor: $floor, photo_name: $photo_name, z_end: $z_end, z_start: $z_start)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataFloor &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.photo_name, photo_name) ||
                other.photo_name == photo_name) &&
            (identical(other.z_end, z_end) || other.z_end == z_end) &&
            (identical(other.z_start, z_start) || other.z_start == z_start));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, floor, photo_name, z_end, z_start);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataFloorCopyWith<_$_DataFloor> get copyWith =>
      __$$_DataFloorCopyWithImpl<_$_DataFloor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataFloorToJson(
      this,
    );
  }
}

abstract class _DataFloor implements DataFloor {
  const factory _DataFloor(
      {required final int floor,
      required final String photo_name,
      required final double z_end,
      required final double z_start}) = _$_DataFloor;

  factory _DataFloor.fromJson(Map<String, dynamic> json) =
      _$_DataFloor.fromJson;

  @override
  int get floor;
  @override // ignore: non_constant_identifier_names
  String get photo_name;
  @override // ignore: non_constant_identifier_names
  double get z_end;
  @override // ignore: non_constant_identifier_names
  double get z_start;
  @override
  @JsonKey(ignore: true)
  _$$_DataFloorCopyWith<_$_DataFloor> get copyWith =>
      throw _privateConstructorUsedError;
}
