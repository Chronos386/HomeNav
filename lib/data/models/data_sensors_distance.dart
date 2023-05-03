import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_sensors_distance.freezed.dart';
part 'data_sensors_distance.g.dart';

@freezed
class DataSensorsDistance with _$DataSensorsDistance {
  const factory DataSensorsDistance({
    // ignore: non_constant_identifier_names
    required List<DataSensorItem> sens_dist
  }) = _DataSensorsDistance;

  factory DataSensorsDistance.fromJson(Map<String, dynamic> json) => _$DataSensorsDistanceFromJson(json);
}

@freezed
class DataSensorItem with _$DataSensorItem {
  const factory DataSensorItem({
    // ignore: non_constant_identifier_names
    required int sens_id,
    required double dist
  }) = _DataSensorItem;

  factory DataSensorItem.fromJson(Map<String, dynamic> json) => _$DataSensorItemFromJson(json);
}