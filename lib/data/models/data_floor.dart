import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_floor.freezed.dart';
part 'data_floor.g.dart';

@freezed
class DataFloor with _$DataFloor {
  const factory DataFloor({
    required int floor,
    // ignore: non_constant_identifier_names
    required String photo_name,
    // ignore: non_constant_identifier_names
    required double z_end,
    // ignore: non_constant_identifier_names
    required double z_start
  }) = _DataFloor;

  factory DataFloor.fromJson(Map<String, dynamic> json) => _$DataFloorFromJson(json);
}