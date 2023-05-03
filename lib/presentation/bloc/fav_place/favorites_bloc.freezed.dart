// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesEventFetchCopyWith<$Res> {
  factory _$$FavoritesEventFetchCopyWith(_$FavoritesEventFetch value,
          $Res Function(_$FavoritesEventFetch) then) =
      __$$FavoritesEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesEventFetchCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$FavoritesEventFetch>
    implements _$$FavoritesEventFetchCopyWith<$Res> {
  __$$FavoritesEventFetchCopyWithImpl(
      _$FavoritesEventFetch _value, $Res Function(_$FavoritesEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesEventFetch implements FavoritesEventFetch {
  const _$FavoritesEventFetch();

  @override
  String toString() {
    return 'FavoritesEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
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
    required TResult Function(FavoritesEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FavoritesEventFetch implements FavoritesEvent {
  const factory FavoritesEventFetch() = _$FavoritesEventFetch;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<PresentationSearchPlace> listPlaces) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emptyList,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateEmptyList value) emptyList,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateEmptyList value)? emptyList,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateEmptyList value)? emptyList,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesStateLoadingCopyWith<$Res> {
  factory _$$FavoritesStateLoadingCopyWith(_$FavoritesStateLoading value,
          $Res Function(_$FavoritesStateLoading) then) =
      __$$FavoritesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesStateLoadingCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateLoading>
    implements _$$FavoritesStateLoadingCopyWith<$Res> {
  __$$FavoritesStateLoadingCopyWithImpl(_$FavoritesStateLoading _value,
      $Res Function(_$FavoritesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesStateLoading implements FavoritesStateLoading {
  const _$FavoritesStateLoading();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<PresentationSearchPlace> listPlaces) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emptyList,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<PresentationSearchPlace> listPlaces)? loaded,
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
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateEmptyList value) emptyList,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateEmptyList value)? emptyList,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateEmptyList value)? emptyList,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateLoading implements FavoritesState {
  const factory FavoritesStateLoading() = _$FavoritesStateLoading;
}

/// @nodoc
abstract class _$$FavoritesStateEmptyListCopyWith<$Res> {
  factory _$$FavoritesStateEmptyListCopyWith(_$FavoritesStateEmptyList value,
          $Res Function(_$FavoritesStateEmptyList) then) =
      __$$FavoritesStateEmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesStateEmptyListCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateEmptyList>
    implements _$$FavoritesStateEmptyListCopyWith<$Res> {
  __$$FavoritesStateEmptyListCopyWithImpl(_$FavoritesStateEmptyList _value,
      $Res Function(_$FavoritesStateEmptyList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesStateEmptyList implements FavoritesStateEmptyList {
  const _$FavoritesStateEmptyList();

  @override
  String toString() {
    return 'FavoritesState.emptyList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateEmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<PresentationSearchPlace> listPlaces) loaded,
    required TResult Function() error,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emptyList,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult? Function()? error,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateEmptyList value) emptyList,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateEmptyList value)? emptyList,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateEmptyList value)? emptyList,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateEmptyList implements FavoritesState {
  const factory FavoritesStateEmptyList() = _$FavoritesStateEmptyList;
}

/// @nodoc
abstract class _$$FavoritesStateLoadedCopyWith<$Res> {
  factory _$$FavoritesStateLoadedCopyWith(_$FavoritesStateLoaded value,
          $Res Function(_$FavoritesStateLoaded) then) =
      __$$FavoritesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PresentationSearchPlace> listPlaces});
}

/// @nodoc
class __$$FavoritesStateLoadedCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateLoaded>
    implements _$$FavoritesStateLoadedCopyWith<$Res> {
  __$$FavoritesStateLoadedCopyWithImpl(_$FavoritesStateLoaded _value,
      $Res Function(_$FavoritesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPlaces = null,
  }) {
    return _then(_$FavoritesStateLoaded(
      listPlaces: null == listPlaces
          ? _value._listPlaces
          : listPlaces // ignore: cast_nullable_to_non_nullable
              as List<PresentationSearchPlace>,
    ));
  }
}

/// @nodoc

class _$FavoritesStateLoaded implements FavoritesStateLoaded {
  const _$FavoritesStateLoaded(
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
    return 'FavoritesState.loaded(listPlaces: $listPlaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._listPlaces, _listPlaces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listPlaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateLoadedCopyWith<_$FavoritesStateLoaded> get copyWith =>
      __$$FavoritesStateLoadedCopyWithImpl<_$FavoritesStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<PresentationSearchPlace> listPlaces) loaded,
    required TResult Function() error,
  }) {
    return loaded(listPlaces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emptyList,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(listPlaces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listPlaces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateEmptyList value) emptyList,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateEmptyList value)? emptyList,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateEmptyList value)? emptyList,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateLoaded implements FavoritesState {
  const factory FavoritesStateLoaded(
          {required final List<PresentationSearchPlace> listPlaces}) =
      _$FavoritesStateLoaded;

  List<PresentationSearchPlace> get listPlaces;
  @JsonKey(ignore: true)
  _$$FavoritesStateLoadedCopyWith<_$FavoritesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesStateErrorCopyWith<$Res> {
  factory _$$FavoritesStateErrorCopyWith(_$FavoritesStateError value,
          $Res Function(_$FavoritesStateError) then) =
      __$$FavoritesStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesStateErrorCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateError>
    implements _$$FavoritesStateErrorCopyWith<$Res> {
  __$$FavoritesStateErrorCopyWithImpl(
      _$FavoritesStateError _value, $Res Function(_$FavoritesStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesStateError implements FavoritesStateError {
  const _$FavoritesStateError();

  @override
  String toString() {
    return 'FavoritesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<PresentationSearchPlace> listPlaces) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emptyList,
    TResult? Function(List<PresentationSearchPlace> listPlaces)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<PresentationSearchPlace> listPlaces)? loaded,
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
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateEmptyList value) emptyList,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateEmptyList value)? emptyList,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateEmptyList value)? emptyList,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateError implements FavoritesState {
  const factory FavoritesStateError() = _$FavoritesStateError;
}
