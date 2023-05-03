import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_filter_place.freezed.dart';
part 'data_filter_place.g.dart';

@freezed
class DataFilterPlace with _$DataFilterPlace {
  const factory DataFilterPlace({
    required String name,
    // ignore: non_constant_identifier_names
    required bool only_class,
    // ignore: non_constant_identifier_names
    required bool search_by_floor,
    required int floor,
  }) = _DataFilterPlace;

  factory DataFilterPlace.fromJson(Map<String, dynamic> json) => _$DataFilterPlaceFromJson(json);
}