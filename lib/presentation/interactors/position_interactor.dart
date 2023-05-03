import '../models/presentation_my_position.dart';

abstract class PositionInteractor {
  Future<PresentationMyPosition?> getMyPosition();
}