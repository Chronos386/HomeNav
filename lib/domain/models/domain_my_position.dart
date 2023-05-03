import '../../data/models/data_my_position.dart';
import '../../presentation/models/presentation_my_position.dart';

class DomainMyPosition {
  final int floor;
  final String room;
  final double x;
  final double y;

  DomainMyPosition({
    required this.floor,
    required this.room,
    required this.x,
    required this.y
  });

  PresentationMyPosition toPres() {
    return PresentationMyPosition(floor: floor, room: room, x: x, y: y);
  }
}

DomainMyPosition fromDataMyPosition(DataMyPosition data) {
  return DomainMyPosition(
      floor: data.floor,
      room: data.room,
      x: data.x,
      y: data.y
  );
}