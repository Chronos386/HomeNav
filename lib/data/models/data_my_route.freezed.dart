// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_my_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataMyRoute _$DataMyRouteFromJson(Map<String, dynamic> json) {
  return _DataMyRoute.fromJson(json);
}

/// @nodoc
mixin _$DataMyRoute {
  double get distance => throw _privateConstructorUsedError;
  List<DataRoute> get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataMyRouteCopyWith<DataMyRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMyRouteCopyWith<$Res> {
  factory $DataMyRouteCopyWith(
          DataMyRoute value, $Res Function(DataMyRoute) then) =
      _$DataMyRouteCopyWithImpl<$Res, DataMyRoute>;
  @useResult
  $Res call({double distance, List<DataRoute> route});
}

/// @nodoc
class _$DataMyRouteCopyWithImpl<$Res, $Val extends DataMyRoute>
    implements $DataMyRouteCopyWith<$Res> {
  _$DataMyRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<DataRoute>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataMyRouteCopyWith<$Res>
    implements $DataMyRouteCopyWith<$Res> {
  factory _$$_DataMyRouteCopyWith(
          _$_DataMyRoute value, $Res Function(_$_DataMyRoute) then) =
      __$$_DataMyRouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double distance, List<DataRoute> route});
}

/// @nodoc
class __$$_DataMyRouteCopyWithImpl<$Res>
    extends _$DataMyRouteCopyWithImpl<$Res, _$_DataMyRoute>
    implements _$$_DataMyRouteCopyWith<$Res> {
  __$$_DataMyRouteCopyWithImpl(
      _$_DataMyRoute _value, $Res Function(_$_DataMyRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? route = null,
  }) {
    return _then(_$_DataMyRoute(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      route: null == route
          ? _value._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<DataRoute>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataMyRoute implements _DataMyRoute {
  const _$_DataMyRoute(
      {required this.distance, required final List<DataRoute> route})
      : _route = route;

  factory _$_DataMyRoute.fromJson(Map<String, dynamic> json) =>
      _$$_DataMyRouteFromJson(json);

  @override
  final double distance;
  final List<DataRoute> _route;
  @override
  List<DataRoute> get route {
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_route);
  }

  @override
  String toString() {
    return 'DataMyRoute(distance: $distance, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataMyRoute &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other._route, _route));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, distance, const DeepCollectionEquality().hash(_route));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataMyRouteCopyWith<_$_DataMyRoute> get copyWith =>
      __$$_DataMyRouteCopyWithImpl<_$_DataMyRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataMyRouteToJson(
      this,
    );
  }
}

abstract class _DataMyRoute implements DataMyRoute {
  const factory _DataMyRoute(
      {required final double distance,
      required final List<DataRoute> route}) = _$_DataMyRoute;

  factory _DataMyRoute.fromJson(Map<String, dynamic> json) =
      _$_DataMyRoute.fromJson;

  @override
  double get distance;
  @override
  List<DataRoute> get route;
  @override
  @JsonKey(ignore: true)
  _$$_DataMyRouteCopyWith<_$_DataMyRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

DataRoute _$DataRouteFromJson(Map<String, dynamic> json) {
  return _DataRoute.fromJson(json);
}

/// @nodoc
mixin _$DataRoute {
  int get floor => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRouteCopyWith<DataRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRouteCopyWith<$Res> {
  factory $DataRouteCopyWith(DataRoute value, $Res Function(DataRoute) then) =
      _$DataRouteCopyWithImpl<$Res, DataRoute>;
  @useResult
  $Res call({int floor, String room, double x, double y});
}

/// @nodoc
class _$DataRouteCopyWithImpl<$Res, $Val extends DataRoute>
    implements $DataRouteCopyWith<$Res> {
  _$DataRouteCopyWithImpl(this._value, this._then);

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
abstract class _$$_DataRouteCopyWith<$Res> implements $DataRouteCopyWith<$Res> {
  factory _$$_DataRouteCopyWith(
          _$_DataRoute value, $Res Function(_$_DataRoute) then) =
      __$$_DataRouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int floor, String room, double x, double y});
}

/// @nodoc
class __$$_DataRouteCopyWithImpl<$Res>
    extends _$DataRouteCopyWithImpl<$Res, _$_DataRoute>
    implements _$$_DataRouteCopyWith<$Res> {
  __$$_DataRouteCopyWithImpl(
      _$_DataRoute _value, $Res Function(_$_DataRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
    Object? room = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_DataRoute(
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
class _$_DataRoute implements _DataRoute {
  const _$_DataRoute(
      {required this.floor,
      required this.room,
      required this.x,
      required this.y});

  factory _$_DataRoute.fromJson(Map<String, dynamic> json) =>
      _$$_DataRouteFromJson(json);

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
    return 'DataRoute(floor: $floor, room: $room, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataRoute &&
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
  _$$_DataRouteCopyWith<_$_DataRoute> get copyWith =>
      __$$_DataRouteCopyWithImpl<_$_DataRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataRouteToJson(
      this,
    );
  }
}

abstract class _DataRoute implements DataRoute {
  const factory _DataRoute(
      {required final int floor,
      required final String room,
      required final double x,
      required final double y}) = _$_DataRoute;

  factory _DataRoute.fromJson(Map<String, dynamic> json) =
      _$_DataRoute.fromJson;

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
  _$$_DataRouteCopyWith<_$_DataRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
