// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_search_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataSearchPlace _$$_DataSearchPlaceFromJson(Map<String, dynamic> json) =>
    _$_DataSearchPlace(
      description: json['description'] as String,
      floor: json['floor'] as int,
      id: json['id'] as int,
      is_class: json['is_class'] as bool,
      name: json['name'] as String,
      photo: json['photo'] as String,
      room: json['room'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DataSearchPlaceToJson(_$_DataSearchPlace instance) =>
    <String, dynamic>{
      'description': instance.description,
      'floor': instance.floor,
      'id': instance.id,
      'is_class': instance.is_class,
      'name': instance.name,
      'photo': instance.photo,
      'room': instance.room,
      'x': instance.x,
      'y': instance.y,
    };
