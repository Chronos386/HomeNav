// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_sensors_distance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataSensorsDistance _$$_DataSensorsDistanceFromJson(
        Map<String, dynamic> json) =>
    _$_DataSensorsDistance(
      sens_dist: (json['sens_dist'] as List<dynamic>)
          .map((e) => DataSensorItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataSensorsDistanceToJson(
        _$_DataSensorsDistance instance) =>
    <String, dynamic>{
      'sens_dist': instance.sens_dist,
    };

_$_DataSensorItem _$$_DataSensorItemFromJson(Map<String, dynamic> json) =>
    _$_DataSensorItem(
      sens_id: json['sens_id'] as int,
      dist: (json['dist'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DataSensorItemToJson(_$_DataSensorItem instance) =>
    <String, dynamic>{
      'sens_id': instance.sens_id,
      'dist': instance.dist,
    };
