import 'dart:convert';
import 'network_storage.dart';
import 'package:http/http.dart' as http;
import '../../models/data_my_route.dart';
import '../../models/data_search_route.dart';
import 'package:home_nav/data/models/data_floor.dart';
import 'package:home_nav/data/models/data_my_position.dart';
import 'package:home_nav/data/models/data_filter_place.dart';
import 'package:home_nav/data/models/data_search_place.dart';
import 'package:home_nav/data/models/data_sensors_distance.dart';

class NetworkStorageImpl implements NetworkStorage {
  final url = 'http://hyrule.ru/api';

  @override
  Future<List<DataFloor>> getFloors() async {
    try {
      var response = await http.get(
          Uri.parse('$url/floor/'),
          headers: {
            'accept': 'application/json; charset=utf-8'
          }
      );
      Iterable jsonResult = json.decode(response.body);
      return jsonResult.map((model) => DataFloor.fromJson(model)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<DataSearchPlace> getPlaceByID(int id) async {
    try {
      var response = await http.get(
        Uri.parse('$url/place/$id'),
        headers: {
          'accept': 'application/json; charset=utf-8'
        }
      );
      var jsonResult = json.decode(response.body);
      return DataSearchPlace.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<DataMyRoute> findMyRoute(DataSearchRoute searchRoute) async {
    try {
      var response = await http.post(
        Uri.parse('$url/routes/'),
        headers: {
          "Content-Type": "application/json",
          'accept': 'application/json; charset=utf-8',
        },
          body: jsonEncode(searchRoute.toJson())
      );
      var jsonResult = json.decode(response.body);
      return DataMyRoute.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<DataMyPosition> getMyPosition(DataSensorsDistance sensors) async {
    try {
      var response = await http.post(
          Uri.parse('$url/my/position/'),
          headers: {
            "Content-Type": "application/json",
            'accept': 'application/json; charset=utf-8',
          },
          body: jsonEncode(sensors.toJson())
      );
      var jsonResult = json.decode(response.body);
      return DataMyPosition.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<DataSearchPlace>> getPlacesByFilters(DataFilterPlace filter) async
  {
    try {
      var response = await http.post(
        Uri.parse('$url/places/'),
        headers: {
          "Content-Type": "application/json",
          "accept": "application/json; charset=utf-8"
        },
        body: jsonEncode(filter.toJson())
      );
      Iterable jsonResult = json.decode(response.body);
      return jsonResult.map((model) => DataSearchPlace.fromJson(model))
          .toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}