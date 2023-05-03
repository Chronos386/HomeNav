import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_my_route.freezed.dart';
part 'data_my_route.g.dart';

@freezed
class DataMyRoute with _$DataMyRoute {
  const factory DataMyRoute({
    required double distance,
    required List<DataRoute> route,
  }) = _DataMyRoute;

  factory DataMyRoute.fromJson(Map<String, dynamic> json) =>
      _$DataMyRouteFromJson(json);
}

@freezed
class DataRoute with _$DataRoute {
  const factory DataRoute({
    required int floor,
    required String room,
    required double x,
    required double y,
  }) = _DataRoute;

  factory DataRoute.fromJson(Map<String, dynamic> json) =>
      _$DataRouteFromJson(json);
}