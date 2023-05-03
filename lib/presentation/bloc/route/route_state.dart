part of 'route_bloc.dart';

@freezed
class RouteState with _$RouteState {
  const factory RouteState.loading() = RouteStateLoading;
  const factory RouteState.loaded() = RouteStateLoaded;
  const factory RouteState.error() = RouteStateError;
}