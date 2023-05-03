import 'package:get_it/get_it.dart';
import '../storage/network/network_storage.dart';
import 'package:home_nav/data/models/data_floor.dart';
import '../../domain/repository/floor_repository.dart';

class FloorRepositoryImpl implements FloorRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<List<DataFloor>> getAllFloors() async {
    return await networkStore.getFloors();
  }
}