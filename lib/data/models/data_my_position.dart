import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_my_position.freezed.dart';
part 'data_my_position.g.dart';

@freezed
class DataMyPosition with _$DataMyPosition {
  const factory DataMyPosition({
    required int floor,
    required String room,
    required double x,
    required double y
  }) = _DataMyPosition;

  factory DataMyPosition.fromJson(Map<String, dynamic> json) => _$DataMyPositionFromJson(json);
}