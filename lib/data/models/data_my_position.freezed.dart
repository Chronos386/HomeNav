// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_my_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataMyPosition _$DataMyPositionFromJson(Map<String, dynamic> json) {
  return _DataMyPosition.fromJson(json);
}

/// @nodoc
mixin _$DataMyPosition {
  int get floor => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataMyPositionCopyWith<DataMyPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMyPositionCopyWith<$Res> {
  factory $DataMyPositionCopyWith(
          DataMyPosition value, $Res Function(DataMyPosition) then) =
      _$DataMyPositionCopyWithImpl<$Res, DataMyPosition>;
  @useResult
  $Res call({int floor, String room, double x, double y});
}

/// @nodoc
class _$DataMyPositionCopyWithImpl<$Res, $Val extends DataMyPosition>
    implements $DataMyPositionCopyWith<$Res> {
  _$DataMyPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
    Object? room = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataMyPositionCopyWith<$Res>
    implements $DataMyPositionCopyWith<$Res> {
  factory _$$_DataMyPositionCopyWith(
          _$_DataMyPosition value, $Res Function(_$_DataMyPosition) then) =
      __$$_DataMyPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int floor, String room, double x, double y});
}

/// @nodoc
class __$$_DataMyPositionCopyWithImpl<$Res>
    extends _$DataMyPositionCopyWithImpl<$Res, _$_DataMyPosition>
    implements _$$_DataMyPositionCopyWith<$Res> {
  __$$_DataMyPositionCopyWithImpl(
      _$_DataMyPosition _value, $Res Function(_$_DataMyPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
    Object? room = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_DataMyPosition(
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataMyPosition implements _DataMyPosition {
  const _$_DataMyPosition(
      {required this.floor,
      required this.room,
      required this.x,
      required this.y});

  factory _$_DataMyPosition.fromJson(Map<String, dynamic> json) =>
      _$$_DataMyPositionFromJson(json);

  @override
  final int floor;
  @override
  final String room;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'DataMyPosition(floor: $floor, room: $room, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataMyPosition &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, floor, room, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataMyPositionCopyWith<_$_DataMyPosition> get copyWith =>
      __$$_DataMyPositionCopyWithImpl<_$_DataMyPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataMyPositionToJson(
      this,
    );
  }
}

abstract class _DataMyPosition implements DataMyPosition {
  const factory _DataMyPosition(
      {required final int floor,
      required final String room,
      required final double x,
      required final double y}) = _$_DataMyPosition;

  factory _DataMyPosition.fromJson(Map<String, dynamic> json) =
      _$_DataMyPosition.fromJson;

  @override
  int get floor;
  @override
  String get room;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_DataMyPositionCopyWith<_$_DataMyPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
