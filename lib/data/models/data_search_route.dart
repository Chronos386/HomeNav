import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_search_route.freezed.dart';
part 'data_search_route.g.dart';

@freezed
class DataSearchRoute with _$DataSearchRoute {
  const factory DataSearchRoute({
    // ignore: non_constant_identifier_names
    required double x_pos,
    // ignore: non_constant_identifier_names
    required double y_pos,
    // ignore: non_constant_identifier_names
    required int floor_pos,
    // ignore: non_constant_identifier_names
    required String room_pos,
    // ignore: non_constant_identifier_names
    required double x_place,
    // ignore: non_constant_identifier_names
    required double y_place,
    // ignore: non_constant_identifier_names
    required int floor_place,
    // ignore: non_constant_identifier_names
    required String room_place,
  }) = _DataSearchRoute;

  factory DataSearchRoute.fromJson(Map<String, dynamic> json) =>
      _$DataSearchRouteFromJson(json);
}
