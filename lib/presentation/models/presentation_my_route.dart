class PresentationMyRoute {
  final double distance;
  final List<PresentationRoute> route;

  PresentationMyRoute({
    required this.distance,
    required this.route,
  });
}

class PresentationRoute {
  final double x;
  final double y;
  final int floor;
  final String room;

  PresentationRoute({
    required this.x,
    required this.y,
    required this.floor,
    required this.room,
  });

  double getResizedX() {
    double newX = x * 0.000951872;
    if(newX > 0.445) {
      newX -= 0.445;
    } else {
      newX = (-1)*(0.445-newX);
    }
    return newX;
  }

  double getResizedY() {
    double newY = y * 0.000948052;
    if(newY < 0.365) {
      newY = 0.365 - newY;
    } else {
      newY = (0.365-newY);
    }
    return newY;
  }
}
