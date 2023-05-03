import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_search_place.freezed.dart';
part 'data_search_place.g.dart';

@freezed
class DataSearchPlace with _$DataSearchPlace {
  const factory DataSearchPlace({
    required String description,
    required int floor,
    required int id,
    // ignore: non_constant_identifier_names
    required bool is_class,
    required String name,
    required String photo,
    required String room,
    required double x,
    required double y
  }) = _DataSearchPlace;

  factory DataSearchPlace.fromJson(Map<String, dynamic> json) => _$DataSearchPlaceFromJson(json);
}