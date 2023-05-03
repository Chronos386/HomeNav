// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_sensors_distance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSensorsDistance _$DataSensorsDistanceFromJson(Map<String, dynamic> json) {
  return _DataSensorsDistance.fromJson(json);
}

/// @nodoc
mixin _$DataSensorsDistance {
// ignore: non_constant_identifier_names
  List<DataSensorItem> get sens_dist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSensorsDistanceCopyWith<DataSensorsDistance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSensorsDistanceCopyWith<$Res> {
  factory $DataSensorsDistanceCopyWith(
          DataSensorsDistance value, $Res Function(DataSensorsDistance) then) =
      _$DataSensorsDistanceCopyWithImpl<$Res, DataSensorsDistance>;
  @useResult
  $Res call({List<DataSensorItem> sens_dist});
}

/// @nodoc
class _$DataSensorsDistanceCopyWithImpl<$Res, $Val extends DataSensorsDistance>
    implements $DataSensorsDistanceCopyWith<$Res> {
  _$DataSensorsDistanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sens_dist = null,
  }) {
    return _then(_value.copyWith(
      sens_dist: null == sens_dist
          ? _value.sens_dist
          : sens_dist // ignore: cast_nullable_to_non_nullable
              as List<DataSensorItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataSensorsDistanceCopyWith<$Res>
    implements $DataSensorsDistanceCopyWith<$Res> {
  factory _$$_DataSensorsDistanceCopyWith(_$_DataSensorsDistance value,
          $Res Function(_$_DataSensorsDistance) then) =
      __$$_DataSensorsDistanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataSensorItem> sens_dist});
}

/// @nodoc
class __$$_DataSensorsDistanceCopyWithImpl<$Res>
    extends _$DataSensorsDistanceCopyWithImpl<$Res, _$_DataSensorsDistance>
    implements _$$_DataSensorsDistanceCopyWith<$Res> {
  __$$_DataSensorsDistanceCopyWithImpl(_$_DataSensorsDistance _value,
      $Res Function(_$_DataSensorsDistance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sens_dist = null,
  }) {
    return _then(_$_DataSensorsDistance(
      sens_dist: null == sens_dist
          ? _value._sens_dist
          : sens_dist // ignore: cast_nullable_to_non_nullable
              as List<DataSensorItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataSensorsDistance implements _DataSensorsDistance {
  const _$_DataSensorsDistance({required final List<DataSensorItem> sens_dist})
      : _sens_dist = sens_dist;

  factory _$_DataSensorsDistance.fromJson(Map<String, dynamic> json) =>
      _$$_DataSensorsDistanceFromJson(json);

// ignore: non_constant_identifier_names
  final List<DataSensorItem> _sens_dist;
// ignore: non_constant_identifier_names
  @override
  List<DataSensorItem> get sens_dist {
    if (_sens_dist is EqualUnmodifiableListView) return _sens_dist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sens_dist);
  }

  @override
  String toString() {
    return 'DataSensorsDistance(sens_dist: $sens_dist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSensorsDistance &&
            const DeepCollectionEquality()
                .equals(other._sens_dist, _sens_dist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sens_dist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSensorsDistanceCopyWith<_$_DataSensorsDistance> get copyWith =>
      __$$_DataSensorsDistanceCopyWithImpl<_$_DataSensorsDistance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSensorsDistanceToJson(
      this,
    );
  }
}

abstract class _DataSensorsDistance implements DataSensorsDistance {
  const factory _DataSensorsDistance(
      {required final List<DataSensorItem> sens_dist}) = _$_DataSensorsDistance;

  factory _DataSensorsDistance.fromJson(Map<String, dynamic> json) =
      _$_DataSensorsDistance.fromJson;

  @override // ignore: non_constant_identifier_names
  List<DataSensorItem> get sens_dist;
  @override
  @JsonKey(ignore: true)
  _$$_DataSensorsDistanceCopyWith<_$_DataSensorsDistance> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSensorItem _$DataSensorItemFromJson(Map<String, dynamic> json) {
  return _DataSensorItem.fromJson(json);
}

/// @nodoc
mixin _$DataSensorItem {
// ignore: non_constant_identifier_names
  int get sens_id => throw _privateConstructorUsedError;
  double get dist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSensorItemCopyWith<DataSensorItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSensorItemCopyWith<$Res> {
  factory $DataSensorItemCopyWith(
          DataSensorItem value, $Res Function(DataSensorItem) then) =
      _$DataSensorItemCopyWithImpl<$Res, DataSensorItem>;
  @useResult
  $Res call({int sens_id, double dist});
}

/// @nodoc
class _$DataSensorItemCopyWithImpl<$Res, $Val extends DataSensorItem>
    implements $DataSensorItemCopyWith<$Res> {
  _$DataSensorItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sens_id = null,
    Object? dist = null,
  }) {
    return _then(_value.copyWith(
      sens_id: null == sens_id
          ? _value.sens_id
          : sens_id // ignore: cast_nullable_to_non_nullable
              as int,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataSensorItemCopyWith<$Res>
    implements $DataSensorItemCopyWith<$Res> {
  factory _$$_DataSensorItemCopyWith(
          _$_DataSensorItem value, $Res Function(_$_DataSensorItem) then) =
      __$$_DataSensorItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sens_id, double dist});
}

/// @nodoc
class __$$_DataSensorItemCopyWithImpl<$Res>
    extends _$DataSensorItemCopyWithImpl<$Res, _$_DataSensorItem>
    implements _$$_DataSensorItemCopyWith<$Res> {
  __$$_DataSensorItemCopyWithImpl(
      _$_DataSensorItem _value, $Res Function(_$_DataSensorItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sens_id = null,
    Object? dist = null,
  }) {
    return _then(_$_DataSensorItem(
      sens_id: null == sens_id
          ? _value.sens_id
          : sens_id // ignore: cast_nullable_to_non_nullable
              as int,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataSensorItem implements _DataSensorItem {
  const _$_DataSensorItem({required this.sens_id, required this.dist});

  factory _$_DataSensorItem.fromJson(Map<String, dynamic> json) =>
      _$$_DataSensorItemFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final int sens_id;
  @override
  final double dist;

  @override
  String toString() {
    return 'DataSensorItem(sens_id: $sens_id, dist: $dist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSensorItem &&
            (identical(other.sens_id, sens_id) || other.sens_id == sens_id) &&
            (identical(other.dist, dist) || other.dist == dist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sens_id, dist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSensorItemCopyWith<_$_DataSensorItem> get copyWith =>
      __$$_DataSensorItemCopyWithImpl<_$_DataSensorItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSensorItemToJson(
      this,
    );
  }
}

abstract class _DataSensorItem implements DataSensorItem {
  const factory _DataSensorItem(
      {required final int sens_id,
      required final double dist}) = _$_DataSensorItem;

  factory _DataSensorItem.fromJson(Map<String, dynamic> json) =
      _$_DataSensorItem.fromJson;

  @override // ignore: non_constant_identifier_names
  int get sens_id;
  @override
  double get dist;
  @override
  @JsonKey(ignore: true)
  _$$_DataSensorItemCopyWith<_$_DataSensorItem> get copyWith =>
      throw _privateConstructorUsedError;
}
