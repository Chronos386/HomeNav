// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'floor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FloorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<PresentationFloor> listLoaded) fetchSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<PresentationFloor> listLoaded)? fetchSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<PresentationFloor> listLoaded)? fetchSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorEventFetch value) fetch,
    required TResult Function(FloorEventSearchFetch value) fetchSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorEventFetch value)? fetch,
    TResult? Function(FloorEventSearchFetch value)? fetchSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorEventFetch value)? fetch,
    TResult Function(FloorEventSearchFetch value)? fetchSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorEventCopyWith<$Res> {
  factory $FloorEventCopyWith(
          FloorEvent value, $Res Function(FloorEvent) then) =
      _$FloorEventCopyWithImpl<$Res, FloorEvent>;
}

/// @nodoc
class _$FloorEventCopyWithImpl<$Res, $Val extends FloorEvent>
    implements $FloorEventCopyWith<$Res> {
  _$FloorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FloorEventFetchCopyWith<$Res> {
  factory _$$FloorEventFetchCopyWith(
          _$FloorEventFetch value, $Res Function(_$FloorEventFetch) then) =
      __$$FloorEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FloorEventFetchCopyWithImpl<$Res>
    extends _$FloorEventCopyWithImpl<$Res, _$FloorEventFetch>
    implements _$$FloorEventFetchCopyWith<$Res> {
  __$$FloorEventFetchCopyWithImpl(
      _$FloorEventFetch _value, $Res Function(_$FloorEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FloorEventFetch implements FloorEventFetch {
  const _$FloorEventFetch();

  @override
  String toString() {
    return 'FloorEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FloorEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<PresentationFloor> listLoaded) fetchSearch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<PresentationFloor> listLoaded)? fetchSearch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<PresentationFloor> listLoaded)? fetchSearch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorEventFetch value) fetch,
    required TResult Function(FloorEventSearchFetch value) fetchSearch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorEventFetch value)? fetch,
    TResult? Function(FloorEventSearchFetch value)? fetchSearch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorEventFetch value)? fetch,
    TResult Function(FloorEventSearchFetch value)? fetchSearch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FloorEventFetch implements FloorEvent {
  const factory FloorEventFetch() = _$FloorEventFetch;
}

/// @nodoc
abstract class _$$FloorEventSearchFetchCopyWith<$Res> {
  factory _$$FloorEventSearchFetchCopyWith(_$FloorEventSearchFetch value,
          $Res Function(_$FloorEventSearchFetch) then) =
      __$$FloorEventSearchFetchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PresentationFloor> listLoaded});
}

/// @nodoc
class __$$FloorEventSearchFetchCopyWithImpl<$Res>
    extends _$FloorEventCopyWithImpl<$Res, _$FloorEventSearchFetch>
    implements _$$FloorEventSearchFetchCopyWith<$Res> {
  __$$FloorEventSearchFetchCopyWithImpl(_$FloorEventSearchFetch _value,
      $Res Function(_$FloorEventSearchFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listLoaded = null,
  }) {
    return _then(_$FloorEventSearchFetch(
      null == listLoaded
          ? _value._listLoaded
          : listLoaded // ignore: cast_nullable_to_non_nullable
              as List<PresentationFloor>,
    ));
  }
}

/// @nodoc

class _$FloorEventSearchFetch implements FloorEventSearchFetch {
  const _$FloorEventSearchFetch(final List<PresentationFloor> listLoaded)
      : _listLoaded = listLoaded;

  final List<PresentationFloor> _listLoaded;
  @override
  List<PresentationFloor> get listLoaded {
    if (_listLoaded is EqualUnmodifiableListView) return _listLoaded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLoaded);
  }

  @override
  String toString() {
    return 'FloorEvent.fetchSearch(listLoaded: $listLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloorEventSearchFetch &&
            const DeepCollectionEquality()
                .equals(other._listLoaded, _listLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listLoaded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FloorEventSearchFetchCopyWith<_$FloorEventSearchFetch> get copyWith =>
      __$$FloorEventSearchFetchCopyWithImpl<_$FloorEventSearchFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<PresentationFloor> listLoaded) fetchSearch,
  }) {
    return fetchSearch(listLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<PresentationFloor> listLoaded)? fetchSearch,
  }) {
    return fetchSearch?.call(listLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<PresentationFloor> listLoaded)? fetchSearch,
    required TResult orElse(),
  }) {
    if (fetchSearch != null) {
      return fetchSearch(listLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorEventFetch value) fetch,
    required TResult Function(FloorEventSearchFetch value) fetchSearch,
  }) {
    return fetchSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorEventFetch value)? fetch,
    TResult? Function(FloorEventSearchFetch value)? fetchSearch,
  }) {
    return fetchSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorEventFetch value)? fetch,
    TResult Function(FloorEventSearchFetch value)? fetchSearch,
    required TResult orElse(),
  }) {
    if (fetchSearch != null) {
      return fetchSearch(this);
    }
    return orElse();
  }
}

abstract class FloorEventSearchFetch implements FloorEvent {
  const factory FloorEventSearchFetch(
      final List<PresentationFloor> listLoaded) = _$FloorEventSearchFetch;

  List<PresentationFloor> get listLoaded;
  @JsonKey(ignore: true)
  _$$FloorEventSearchFetchCopyWith<_$FloorEventSearchFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FloorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PresentationFloor> listLoaded) loaded,
    required TResult Function(List<PresentationSearchPlace> listPlaces)
        searchLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PresentationFloor> listLoaded)? loaded,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PresentationFloor> listLoaded)? loaded,
    TResult Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorStateLoading value) loading,
    required TResult Function(FloorStateLoaded value) loaded,
    required TResult Function(FloorStateSearchLoaded value) searchLoaded,
    required TResult Function(FloorStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorStateLoading value)? loading,
    TResult? Function(FloorStateLoaded value)? loaded,
    TResult? Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult? Function(FloorStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorStateLoading value)? loading,
    TResult Function(FloorStateLoaded value)? loaded,
    TResult Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult Function(FloorStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorStateCopyWith<$Res> {
  factory $FloorStateCopyWith(
          FloorState value, $Res Function(FloorState) then) =
      _$FloorStateCopyWithImpl<$Res, FloorState>;
}

/// @nodoc
class _$FloorStateCopyWithImpl<$Res, $Val extends FloorState>
    implements $FloorStateCopyWith<$Res> {
  _$FloorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FloorStateLoadingCopyWith<$Res> {
  factory _$$FloorStateLoadingCopyWith(
          _$FloorStateLoading value, $Res Function(_$FloorStateLoading) then) =
      __$$FloorStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FloorStateLoadingCopyWithImpl<$Res>
    extends _$FloorStateCopyWithImpl<$Res, _$FloorStateLoading>
    implements _$$FloorStateLoadingCopyWith<$Res> {
  __$$FloorStateLoadingCopyWithImpl(
      _$FloorStateLoading _value, $Res Function(_$FloorStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FloorStateLoading implements FloorStateLoading {
  const _$FloorStateLoading();

  @override
  String toString() {
    return 'FloorState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FloorStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PresentationFloor> listLoaded) loaded,
    required TResult Function(List<PresentationSearchPlace> listPlaces)
        searchLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PresentationFloor> listLoaded)? loaded,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PresentationFloor> listLoaded)? loaded,
    TResult Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorStateLoading value) loading,
    required TResult Function(FloorStateLoaded value) loaded,
    required TResult Function(FloorStateSearchLoaded value) searchLoaded,
    required TResult Function(FloorStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorStateLoading value)? loading,
    TResult? Function(FloorStateLoaded value)? loaded,
    TResult? Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult? Function(FloorStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorStateLoading value)? loading,
    TResult Function(FloorStateLoaded value)? loaded,
    TResult Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult Function(FloorStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FloorStateLoading implements FloorState {
  const factory FloorStateLoading() = _$FloorStateLoading;
}

/// @nodoc
abstract class _$$FloorStateLoadedCopyWith<$Res> {
  factory _$$FloorStateLoadedCopyWith(
          _$FloorStateLoaded value, $Res Function(_$FloorStateLoaded) then) =
      __$$FloorStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PresentationFloor> listLoaded});
}

/// @nodoc
class __$$FloorStateLoadedCopyWithImpl<$Res>
    extends _$FloorStateCopyWithImpl<$Res, _$FloorStateLoaded>
    implements _$$FloorStateLoadedCopyWith<$Res> {
  __$$FloorStateLoadedCopyWithImpl(
      _$FloorStateLoaded _value, $Res Function(_$FloorStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listLoaded = null,
  }) {
    return _then(_$FloorStateLoaded(
      listLoaded: null == listLoaded
          ? _value._listLoaded
          : listLoaded // ignore: cast_nullable_to_non_nullable
              as List<PresentationFloor>,
    ));
  }
}

/// @nodoc

class _$FloorStateLoaded implements FloorStateLoaded {
  const _$FloorStateLoaded({required final List<PresentationFloor> listLoaded})
      : _listLoaded = listLoaded;

  final List<PresentationFloor> _listLoaded;
  @override
  List<PresentationFloor> get listLoaded {
    if (_listLoaded is EqualUnmodifiableListView) return _listLoaded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLoaded);
  }

  @override
  String toString() {
    return 'FloorState.loaded(listLoaded: $listLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloorStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._listLoaded, _listLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listLoaded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FloorStateLoadedCopyWith<_$FloorStateLoaded> get copyWith =>
      __$$FloorStateLoadedCopyWithImpl<_$FloorStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PresentationFloor> listLoaded) loaded,
    required TResult Function(List<PresentationSearchPlace> listPlaces)
        searchLoaded,
    required TResult Function() error,
  }) {
    return loaded(listLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PresentationFloor> listLoaded)? loaded,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(listLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PresentationFloor> listLoaded)? loaded,
    TResult Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorStateLoading value) loading,
    required TResult Function(FloorStateLoaded value) loaded,
    required TResult Function(FloorStateSearchLoaded value) searchLoaded,
    required TResult Function(FloorStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorStateLoading value)? loading,
    TResult? Function(FloorStateLoaded value)? loaded,
    TResult? Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult? Function(FloorStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorStateLoading value)? loading,
    TResult Function(FloorStateLoaded value)? loaded,
    TResult Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult Function(FloorStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FloorStateLoaded implements FloorState {
  const factory FloorStateLoaded(
      {required final List<PresentationFloor> listLoaded}) = _$FloorStateLoaded;

  List<PresentationFloor> get listLoaded;
  @JsonKey(ignore: true)
  _$$FloorStateLoadedCopyWith<_$FloorStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FloorStateSearchLoadedCopyWith<$Res> {
  factory _$$FloorStateSearchLoadedCopyWith(_$FloorStateSearchLoaded value,
          $Res Function(_$FloorStateSearchLoaded) then) =
      __$$FloorStateSearchLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PresentationSearchPlace> listPlaces});
}

/// @nodoc
class __$$FloorStateSearchLoadedCopyWithImpl<$Res>
    extends _$FloorStateCopyWithImpl<$Res, _$FloorStateSearchLoaded>
    implements _$$FloorStateSearchLoadedCopyWith<$Res> {
  __$$FloorStateSearchLoadedCopyWithImpl(_$FloorStateSearchLoaded _value,
      $Res Function(_$FloorStateSearchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPlaces = null,
  }) {
    return _then(_$FloorStateSearchLoaded(
      listPlaces: null == listPlaces
          ? _value._listPlaces
          : listPlaces // ignore: cast_nullable_to_non_nullable
              as List<PresentationSearchPlace>,
    ));
  }
}

/// @nodoc

class _$FloorStateSearchLoaded implements FloorStateSearchLoaded {
  const _$FloorStateSearchLoaded(
      {required final List<PresentationSearchPlace> listPlaces})
      : _listPlaces = listPlaces;

  final List<PresentationSearchPlace> _listPlaces;
  @override
  List<PresentationSearchPlace> get listPlaces {
    if (_listPlaces is EqualUnmodifiableListView) return _listPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPlaces);
  }

  @override
  String toString() {
    return 'FloorState.searchLoaded(listPlaces: $listPlaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloorStateSearchLoaded &&
            const DeepCollectionEquality()
                .equals(other._listPlaces, _listPlaces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listPlaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FloorStateSearchLoadedCopyWith<_$FloorStateSearchLoaded> get copyWith =>
      __$$FloorStateSearchLoadedCopyWithImpl<_$FloorStateSearchLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PresentationFloor> listLoaded) loaded,
    required TResult Function(List<PresentationSearchPlace> listPlaces)
        searchLoaded,
    required TResult Function() error,
  }) {
    return searchLoaded(listPlaces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PresentationFloor> listLoaded)? loaded,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult? Function()? error,
  }) {
    return searchLoaded?.call(listPlaces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PresentationFloor> listLoaded)? loaded,
    TResult Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(listPlaces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorStateLoading value) loading,
    required TResult Function(FloorStateLoaded value) loaded,
    required TResult Function(FloorStateSearchLoaded value) searchLoaded,
    required TResult Function(FloorStateError value) error,
  }) {
    return searchLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorStateLoading value)? loading,
    TResult? Function(FloorStateLoaded value)? loaded,
    TResult? Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult? Function(FloorStateError value)? error,
  }) {
    return searchLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorStateLoading value)? loading,
    TResult Function(FloorStateLoaded value)? loaded,
    TResult Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult Function(FloorStateError value)? error,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(this);
    }
    return orElse();
  }
}

abstract class FloorStateSearchLoaded implements FloorState {
  const factory FloorStateSearchLoaded(
          {required final List<PresentationSearchPlace> listPlaces}) =
      _$FloorStateSearchLoaded;

  List<PresentationSearchPlace> get listPlaces;
  @JsonKey(ignore: true)
  _$$FloorStateSearchLoadedCopyWith<_$FloorStateSearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FloorStateErrorCopyWith<$Res> {
  factory _$$FloorStateErrorCopyWith(
          _$FloorStateError value, $Res Function(_$FloorStateError) then) =
      __$$FloorStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FloorStateErrorCopyWithImpl<$Res>
    extends _$FloorStateCopyWithImpl<$Res, _$FloorStateError>
    implements _$$FloorStateErrorCopyWith<$Res> {
  __$$FloorStateErrorCopyWithImpl(
      _$FloorStateError _value, $Res Function(_$FloorStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FloorStateError implements FloorStateError {
  const _$FloorStateError();

  @override
  String toString() {
    return 'FloorState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FloorStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PresentationFloor> listLoaded) loaded,
    required TResult Function(List<PresentationSearchPlace> listPlaces)
        searchLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PresentationFloor> listLoaded)? loaded,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PresentationFloor> listLoaded)? loaded,
    TResult Function(List<PresentationSearchPlace> listPlaces)? searchLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FloorStateLoading value) loading,
    required TResult Function(FloorStateLoaded value) loaded,
    required TResult Function(FloorStateSearchLoaded value) searchLoaded,
    required TResult Function(FloorStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FloorStateLoading value)? loading,
    TResult? Function(FloorStateLoaded value)? loaded,
    TResult? Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult? Function(FloorStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FloorStateLoading value)? loading,
    TResult Function(FloorStateLoaded value)? loaded,
    TResult Function(FloorStateSearchLoaded value)? searchLoaded,
    TResult Function(FloorStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FloorStateError implements FloorState {
  const factory FloorStateError() = _$FloorStateError;
}
