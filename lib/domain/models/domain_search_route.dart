import '../../data/models/data_search_route.dart';
import '../../presentation/models/presentation_search_route.dart';

class DomainSearchRoute {
  final double xPos;
  final double yPos;
  final int floorPos;
  final String roomPos;

  final double xPlace;
  final double yPlace;
  final int floorPlace;
  final String roomPlace;

  DomainSearchRoute({
    required this.xPos,
    required this.yPos,
    required this.floorPos,
    required this.roomPos,
    required this.xPlace,
    required this.yPlace,
    required this.floorPlace,
    required this.roomPlace,
  });

  PresentationSearchRoute toPres() {
    return PresentationSearchRoute(
      xPos: xPos,
      yPos: yPos,
      floorPos: floorPos,
      roomPos: roomPos,
      xPlace: xPlace,
      yPlace: yPlace,
      floorPlace: floorPlace,
      roomPlace: roomPlace,
    );
  }

  DataSearchRoute toData() {
    return DataSearchRoute(
      x_pos: xPos,
      y_pos: yPos,
      floor_pos: floorPos,
      room_pos: roomPos,
      x_place: xPlace,
      y_place: yPlace,
      floor_place: floorPlace,
      room_place: roomPlace,
    );
  }
}

DomainSearchRoute fromDataSearchRoute(DataSearchRoute searchRoute) {
  return DomainSearchRoute(
    xPos: searchRoute.x_pos,
    yPos: searchRoute.y_pos,
    floorPos: searchRoute.floor_pos,
    roomPos: searchRoute.room_pos,
    xPlace: searchRoute.x_place,
    yPlace: searchRoute.y_place,
    floorPlace: searchRoute.floor_place,
    roomPlace: searchRoute.room_place,
  );
}

DomainSearchRoute fromPresentationSearchRoute(
    PresentationSearchRoute searchRoute) {
  return DomainSearchRoute(
    xPos: searchRoute.xPos,
    yPos: searchRoute.yPos,
    floorPos: searchRoute.floorPos,
    roomPos: searchRoute.roomPos,
    xPlace: searchRoute.xPlace,
    yPlace: searchRoute.yPlace,
    floorPlace: searchRoute.floorPlace,
    roomPlace: searchRoute.roomPlace,
  );
}
