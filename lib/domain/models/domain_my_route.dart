import 'package:home_nav/data/models/data_my_route.dart';
import '../../presentation/models/presentation_my_route.dart';

class DomainMyRoute {
  final double distance;
  final List<DomainRoute> route;

  DomainMyRoute({
    required this.distance,
    required this.route,
  });

  PresentationMyRoute toPres() {
    return PresentationMyRoute(
      distance: distance,
      route: route.map((model) => model.toPres()).toList(),
    );
  }
}

DomainMyRoute fromDataMyRoute(DataMyRoute myRoute) {
  return DomainMyRoute(
    distance: myRoute.distance,
    route: myRoute.route.map((model) => fromDataRoute(model)).toList(),
  );
}

class DomainRoute {
  final double x;
  final double y;
  final int floor;
  final String room;

  DomainRoute({
    required this.x,
    required this.y,
    required this.floor,
    required this.room,
  });

  PresentationRoute toPres() {
    return PresentationRoute(
      x: x,
      y: y,
      floor: floor,
      room: room,
    );
  }
}

DomainRoute fromDataRoute(DataRoute route) {
  return DomainRoute(
    x: route.x,
    y: route.y,
    floor: route.floor,
    room: route.room,
  );
}