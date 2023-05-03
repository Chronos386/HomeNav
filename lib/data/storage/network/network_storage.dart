import '../../models/data_floor.dart';
import '../../models/data_my_route.dart';
import '../../models/data_my_position.dart';
import '../../models/data_filter_place.dart';
import '../../models/data_search_place.dart';
import '../../models/data_search_route.dart';
import '../../models/data_sensors_distance.dart';

abstract class NetworkStorage {
  Future<List<DataFloor>> getFloors();
  Future<DataSearchPlace> getPlaceByID(int id);
  Future<DataMyRoute> findMyRoute(DataSearchRoute searchRoute);
  Future<DataMyPosition> getMyPosition(DataSensorsDistance sensors);
  Future<List<DataSearchPlace>> getPlacesByFilters(DataFilterPlace filter);
}