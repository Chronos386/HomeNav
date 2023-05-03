// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_search_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSearchPlace _$DataSearchPlaceFromJson(Map<String, dynamic> json) {
  return _DataSearchPlace.fromJson(json);
}

/// @nodoc
mixin _$DataSearchPlace {
  String get description => throw _privateConstructorUsedError;
  int get floor => throw _privateConstructorUsedError;
  int get id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  bool get is_class => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSearchPlaceCopyWith<DataSearchPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSearchPlaceCopyWith<$Res> {
  factory $DataSearchPlaceCopyWith(
          DataSearchPlace value, $Res Function(DataSearchPlace) then) =
      _$DataSearchPlaceCopyWithImpl<$Res, DataSearchPlace>;
  @useResult
  $Res call(
      {String description,
      int floor,
      int id,
      bool is_class,
      String name,
      String photo,
      String room,
      double x,
      double y});
}

/// @nodoc
class _$DataSearchPlaceCopyWithImpl<$Res, $Val extends DataSearchPlace>
    implements $DataSearchPlaceCopyWith<$Res> {
  _$DataSearchPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? floor = null,
    Object? id = null,
    Object? is_class = null,
    Object? name = null,
    Object? photo = null,
    Object? room = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_class: null == is_class
          ? _value.is_class
          : is_class // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_DataSearchPlaceCopyWith<$Res>
    implements $DataSearchPlaceCopyWith<$Res> {
  factory _$$_DataSearchPlaceCopyWith(
          _$_DataSearchPlace value, $Res Function(_$_DataSearchPlace) then) =
      __$$_DataSearchPlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      int floor,
      int id,
      bool is_class,
      String name,
      String photo,
      String room,
      double x,
      double y});
}

/// @nodoc
class __$$_DataSearchPlaceCopyWithImpl<$Res>
    extends _$DataSearchPlaceCopyWithImpl<$Res, _$_DataSearchPlace>
    implements _$$_DataSearchPlaceCopyWith<$Res> {
  __$$_DataSearchPlaceCopyWithImpl(
      _$_DataSearchPlace _value, $Res Function(_$_DataSearchPlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? floor = null,
    Object? id = null,
    Object? is_class = null,
    Object? name = null,
    Object? photo = null,
    Object? room = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_DataSearchPlace(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_class: null == is_class
          ? _value.is_class
          : is_class // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_DataSearchPlace implements _DataSearchPlace {
  const _$_DataSearchPlace(
      {required this.description,
      required this.floor,
      required this.id,
      required this.is_class,
      required this.name,
      required this.photo,
      required this.room,
      required this.x,
      required this.y});

  factory _$_DataSearchPlace.fromJson(Map<String, dynamic> json) =>
      _$$_DataSearchPlaceFromJson(json);

  @override
  final String description;
  @override
  final int floor;
  @override
  final int id;
// ignore: non_constant_identifier_names
  @override
  final bool is_class;
  @override
  final String name;
  @override
  final String photo;
  @override
  final String room;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'DataSearchPlace(description: $description, floor: $floor, id: $id, is_class: $is_class, name: $name, photo: $photo, room: $room, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSearchPlace &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_class, is_class) ||
                other.is_class == is_class) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, floor, id, is_class, name, photo, room, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSearchPlaceCopyWith<_$_DataSearchPlace> get copyWith =>
      __$$_DataSearchPlaceCopyWithImpl<_$_DataSearchPlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSearchPlaceToJson(
      this,
    );
  }
}

abstract class _DataSearchPlace implements DataSearchPlace {
  const factory _DataSearchPlace(
      {required final String description,
      required final int floor,
      required final int id,
      required final bool is_class,
      required final String name,
      required final String photo,
      required final String room,
      required final double x,
      required final double y}) = _$_DataSearchPlace;

  factory _DataSearchPlace.fromJson(Map<String, dynamic> json) =
      _$_DataSearchPlace.fromJson;

  @override
  String get description;
  @override
  int get floor;
  @override
  int get id;
  @override // ignore: non_constant_identifier_names
  bool get is_class;
  @override
  String get name;
  @override
  String get photo;
  @override
  String get room;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_DataSearchPlaceCopyWith<_$_DataSearchPlace> get copyWith =>
      throw _privateConstructorUsedError;
}
