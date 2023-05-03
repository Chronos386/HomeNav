// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_my_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataMyPosition _$$_DataMyPositionFromJson(Map<String, dynamic> json) =>
    _$_DataMyPosition(
      floor: json['floor'] as int,
      room: json['room'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DataMyPositionToJson(_$_DataMyPosition instance) =>
    <String, dynamic>{
      'floor': instance.floor,
      'room': instance.room,
      'x': instance.x,
      'y': instance.y,
    };
