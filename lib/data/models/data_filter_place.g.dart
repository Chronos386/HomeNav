// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_filter_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataFilterPlace _$$_DataFilterPlaceFromJson(Map<String, dynamic> json) =>
    _$_DataFilterPlace(
      name: json['name'] as String,
      only_class: json['only_class'] as bool,
      search_by_floor: json['search_by_floor'] as bool,
      floor: json['floor'] as int,
    );

Map<String, dynamic> _$$_DataFilterPlaceToJson(_$_DataFilterPlace instance) =>
    <String, dynamic>{
      'name': instance.name,
      'only_class': instance.only_class,
      'search_by_floor': instance.search_by_floor,
      'floor': instance.floor,
    };
