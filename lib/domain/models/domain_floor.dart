import '../../data/models/data_floor.dart';
import '../../presentation/models/presentation_floor.dart';

class DomainFloor {
  final int floor;
  final String photoName;

  DomainFloor({
    required this.floor,
    required this.photoName
  });

  PresentationFloor toPres() {
    return PresentationFloor(
        floor: floor,
        photoName: photoName
    );
  }
}

DomainFloor fromDataFloor(DataFloor floor) {
  return DomainFloor(
      floor: floor.floor,
      photoName: floor.photo_name
  );
}