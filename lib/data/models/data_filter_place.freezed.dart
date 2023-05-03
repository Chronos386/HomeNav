// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_filter_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataFilterPlace _$DataFilterPlaceFromJson(Map<String, dynamic> json) {
  return _DataFilterPlace.fromJson(json);
}

/// @nodoc
mixin _$DataFilterPlace {
  String get name =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  bool get only_class =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  bool get search_by_floor => throw _privateConstructorUsedError;
  int get floor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataFilterPlaceCopyWith<DataFilterPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataFilterPlaceCopyWith<$Res> {
  factory $DataFilterPlaceCopyWith(
          DataFilterPlace value, $Res Function(DataFilterPlace) then) =
      _$DataFilterPlaceCopyWithImpl<$Res, DataFilterPlace>;
  @useResult
  $Res call({String name, bool only_class, bool search_by_floor, int floor});
}

/// @nodoc
class _$DataFilterPlaceCopyWithImpl<$Res, $Val extends DataFilterPlace>
    implements $DataFilterPlaceCopyWith<$Res> {
  _$DataFilterPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? only_class = null,
    Object? search_by_floor = null,
    Object? floor = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      only_class: null == only_class
          ? _value.only_class
          : only_class // ignore: cast_nullable_to_non_nullable
              as bool,
      search_by_floor: null == search_by_floor
          ? _value.search_by_floor
          : search_by_floor // ignore: cast_nullable_to_non_nullable
              as bool,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataFilterPlaceCopyWith<$Res>
    implements $DataFilterPlaceCopyWith<$Res> {
  factory _$$_DataFilterPlaceCopyWith(
          _$_DataFilterPlace value, $Res Function(_$_DataFilterPlace) then) =
      __$$_DataFilterPlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool only_class, bool search_by_floor, int floor});
}

/// @nodoc
class __$$_DataFilterPlaceCopyWithImpl<$Res>
    extends _$DataFilterPlaceCopyWithImpl<$Res, _$_DataFilterPlace>
    implements _$$_DataFilterPlaceCopyWith<$Res> {
  __$$_DataFilterPlaceCopyWithImpl(
      _$_DataFilterPlace _value, $Res Function(_$_DataFilterPlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? only_class = null,
    Object? search_by_floor = null,
    Object? floor = null,
  }) {
    return _then(_$_DataFilterPlace(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      only_class: null == only_class
          ? _value.only_class
          : only_class // ignore: cast_nullable_to_non_nullable
              as bool,
      search_by_floor: null == search_by_floor
          ? _value.search_by_floor
          : search_by_floor // ignore: cast_nullable_to_non_nullable
              as bool,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataFilterPlace implements _DataFilterPlace {
  const _$_DataFilterPlace(
      {required this.name,
      required this.only_class,
      required this.search_by_floor,
      required this.floor});

  factory _$_DataFilterPlace.fromJson(Map<String, dynamic> json) =>
      _$$_DataFilterPlaceFromJson(json);

  @override
  final String name;
// ignore: non_constant_identifier_names
  @override
  final bool only_class;
// ignore: non_constant_identifier_names
  @override
  final bool search_by_floor;
  @override
  final int floor;

  @override
  String toString() {
    return 'DataFilterPlace(name: $name, only_class: $only_class, search_by_floor: $search_by_floor, floor: $floor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataFilterPlace &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.only_class, only_class) ||
                other.only_class == only_class) &&
            (identical(other.search_by_floor, search_by_floor) ||
                other.search_by_floor == search_by_floor) &&
            (identical(other.floor, floor) || other.floor == floor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, only_class, search_by_floor, floor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataFilterPlaceCopyWith<_$_DataFilterPlace> get copyWith =>
      __$$_DataFilterPlaceCopyWithImpl<_$_DataFilterPlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataFilterPlaceToJson(
      this,
    );
  }
}

abstract class _DataFilterPlace implements DataFilterPlace {
  const factory _DataFilterPlace(
      {required final String name,
      required final bool only_class,
      required final bool search_by_floor,
      required final int floor}) = _$_DataFilterPlace;

  factory _DataFilterPlace.fromJson(Map<String, dynamic> json) =
      _$_DataFilterPlace.fromJson;

  @override
  String get name;
  @override // ignore: non_constant_identifier_names
  bool get only_class;
  @override // ignore: non_constant_identifier_names
  bool get search_by_floor;
  @override
  int get floor;
  @override
  @JsonKey(ignore: true)
  _$$_DataFilterPlaceCopyWith<_$_DataFilterPlace> get copyWith =>
      throw _privateConstructorUsedError;
}
