import '../../models/data_ble_sensor.dart';

abstract class BleStorage {
  Future<List<BleSensorData>> scan();
}