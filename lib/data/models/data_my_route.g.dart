// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_my_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataMyRoute _$$_DataMyRouteFromJson(Map<String, dynamic> json) =>
    _$_DataMyRoute(
      distance: (json['distance'] as num).toDouble(),
      route: (json['route'] as List<dynamic>)
          .map((e) => DataRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataMyRouteToJson(_$_DataMyRoute instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'route': instance.route,
    };

_$_DataRoute _$$_DataRouteFromJson(Map<String, dynamic> json) => _$_DataRoute(
      floor: json['floor'] as int,
      room: json['room'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DataRouteToJson(_$_DataRoute instance) =>
    <String, dynamic>{
      'floor': instance.floor,
      'room': instance.room,
      'x': instance.x,
      'y': instance.y,
    };
