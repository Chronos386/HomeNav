import '../models/presentation_floor.dart';

abstract class FloorInteractor {
  Future<List<PresentationFloor>> getAllFloors();
}