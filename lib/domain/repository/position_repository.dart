import '../../data/models/data_my_position.dart';

abstract class PositionRepository {
  Future<DataMyPosition?> getMyPosition();
}