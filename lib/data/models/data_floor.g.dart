// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_floor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataFloor _$$_DataFloorFromJson(Map<String, dynamic> json) => _$_DataFloor(
      floor: json['floor'] as int,
      photo_name: json['photo_name'] as String,
      z_end: (json['z_end'] as num).toDouble(),
      z_start: (json['z_start'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DataFloorToJson(_$_DataFloor instance) =>
    <String, dynamic>{
      'floor': instance.floor,
      'photo_name': instance.photo_name,
      'z_end': instance.z_end,
      'z_start': instance.z_start,
    };
