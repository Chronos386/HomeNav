import '../../data/models/data_my_route.dart';
import '../../data/models/data_search_route.dart';

abstract class RouteRepository {
  Future<DataMyRoute> findMyRoute(DataSearchRoute searchRoute);
}