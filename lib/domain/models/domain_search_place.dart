import '../../data/models/data_search_place.dart';
import '../../presentation/models/presentation_search_place.dart';

class DomainSearchPlace {
  final String description;
  final int floor;
  final int id;
  final bool isClass;
  final String name;
  final String photo;
  final String room;
  final double x;
  final double y;

  DomainSearchPlace({
    required this.description,
    required this.floor,
    required this.id,
    required this.isClass,
    required this.name,
    required this.photo,
    required this.room,
    required this.x,
    required this.y,
  });

  PresentationSearchPlace toPres() {
    return PresentationSearchPlace(
      id: id,
      x: x,
      y: y,
      floor: floor,
      name: name,
      room: room,
      photo: photo,
      isClass: isClass,
      description: description,
    );
  }
}

DomainSearchPlace fromDataSearchPlace(DataSearchPlace data) {
  return DomainSearchPlace(
    description: data.description,
    floor: data.floor,
    id: data.id,
    isClass: data.is_class,
    name: data.name,
    photo: data.photo,
    room: data.room,
    x: data.x,
    y: data.y,
  );
}
