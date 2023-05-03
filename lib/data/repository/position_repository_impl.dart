import 'package:get_it/get_it.dart';
import '../storage/ble/ble_storage.dart';
import '../models/data_sensors_distance.dart';
import '../storage/network/network_storage.dart';
import '../../domain/repository/position_repository.dart';
import 'package:home_nav/data/models/data_my_position.dart';

class PositionRepositoryImpl implements PositionRepository {
  var bleScanner = GetIt.instance<BleStorage>();
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<DataMyPosition?> getMyPosition() async {
    var bleList = await bleScanner.scan();
    if(bleList.length == 3) {
      DataSensorsDistance sensors = DataSensorsDistance(
          sens_dist: bleList.map((item) => item.toSensorItem()).toList()
      );
      return await networkStore.getMyPosition(sensors);
    } else {
      return null;
    }
  }
}