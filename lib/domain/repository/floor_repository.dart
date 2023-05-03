import '../../data/models/data_floor.dart';

abstract class FloorRepository {
  Future<List<DataFloor>> getAllFloors();
}