// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_search_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataSearchRoute _$$_DataSearchRouteFromJson(Map<String, dynamic> json) =>
    _$_DataSearchRoute(
      x_pos: (json['x_pos'] as num).toDouble(),
      y_pos: (json['y_pos'] as num).toDouble(),
      floor_pos: json['floor_pos'] as int,
      room_pos: json['room_pos'] as String,
      x_place: (json['x_place'] as num).toDouble(),
      y_place: (json['y_place'] as num).toDouble(),
      floor_place: json['floor_place'] as int,
      room_place: json['room_place'] as String,
    );

Map<String, dynamic> _$$_DataSearchRouteToJson(_$_DataSearchRoute instance) =>
    <String, dynamic>{
      'x_pos': instance.x_pos,
      'y_pos': instance.y_pos,
      'floor_pos': instance.floor_pos,
      'room_pos': instance.room_pos,
      'x_place': instance.x_place,
      'y_place': instance.y_place,
      'floor_place': instance.floor_place,
      'room_place': instance.room_place,
    };
