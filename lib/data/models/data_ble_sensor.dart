import 'data_sensors_distance.dart';

class BleSensorData {
  int id;
  double distance;

  BleSensorData({
    required this.id,
    required this.distance
  });

  DataSensorItem toSensorItem() {
    return DataSensorItem(sens_id: id, dist: distance);
  }
}