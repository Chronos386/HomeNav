import 'package:get_it/get_it.dart';
import '../storage/network/network_storage.dart';
import '../../domain/repository/route_repository.dart';
import 'package:home_nav/data/models/data_my_route.dart';
import 'package:home_nav/data/models/data_search_route.dart';

class RouteRepositoryImpl implements RouteRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<DataMyRoute> findMyRoute(DataSearchRoute searchRoute) async {
    return await networkStore.findMyRoute(searchRoute);
  }
}