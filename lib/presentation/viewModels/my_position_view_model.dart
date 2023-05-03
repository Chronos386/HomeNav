import '../models/presentation_my_position.dart';

class MyPositionViewModel {
  PresentationMyPosition? myPosition;
  List<double> position = [];
  bool firsTime = true;
  bool touchFindMe = false;

  void setMyPosition(PresentationMyPosition searchPos) {
    position = [];
    myPosition = searchPos;
    double x = myPosition!.x * 0.000951872;
    double y = myPosition!.y * 0.000948052;
    if(x > 0.445) {
      x -= 0.445;
    } else {
      x = (-1)*(0.445-x);
    }
    if(y < 0.365) {
      y = 0.365 - y;
    } else {
      y = (0.365-y);
    }
    position.add(x);
    position.add(y);
  }
}