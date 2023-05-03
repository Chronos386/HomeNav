class PresentationSearchPlace {
  final int id;
  final double x;
  final double y;
  final int floor;
  final String name;
  final String room;
  final String photo;
  final bool isClass;
  final String description;

  PresentationSearchPlace({
    required this.id,
    required this.x,
    required this.y,
    required this.floor,
    required this.name,
    required this.room,
    required this.photo,
    required this.isClass,
    required this.description,
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