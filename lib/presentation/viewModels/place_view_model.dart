import 'package:flutter/material.dart';
import '../models/presentation_search_place.dart';

class Pos {
  double x = 0.0;
  double y = 0.0;
  Pos(this.x, this.y);
}

class PlaceViewModel extends ChangeNotifier {
  double scale = 1.0;
  bool _isScaled = true;
  Pos pos = Pos(0.0, 0.0);
  Pos _endPos = Pos(0.0, 0.0);
  double _previousScale = 1.0;
  Pos _previousPos = Pos(0.0, 0.0);
  PresentationSearchPlace? searchPlace;

  int selectedIndex = -1;
  String urlPict = '';
  List<int> floorsIdList = [];
  int currentIntValue = -1;

  bool _hasTouched = false;
  Pos get endPos => _endPos;
  bool get isScaled => _isScaled;
  bool get hasTouched => _hasTouched;
  Pos get previousPos => _previousPos;
  double get previousScale => _previousScale;

  set hasTouched(value) {
    _hasTouched = value;
    notifyListeners();
  }

  void handleDragScaleStart(ScaleStartDetails details) {
    _hasTouched = true;
    _previousScale = scale;
    _previousPos.x = (details.focalPoint.dx / scale) - _endPos.x;
    _previousPos.y = (details.focalPoint.dy / scale) - _endPos.y;
    notifyListeners();
  }

  void handleDragScaleUpdate(ScaleUpdateDetails details) {
    scale = _previousScale * details.scale;
    if (scale >= 1) {
      _isScaled = true;
    } else {
      _isScaled = false;
    }
    if (scale < 1.0) {
      scale = 1.0;
    } else if (scale > 4.0) {
      scale = 4.0;
    } else if (_previousScale == scale) {
      pos.x = (details.focalPoint.dx / scale) - _previousPos.x;
      pos.y = (details.focalPoint.dy / scale) - _previousPos.y;
    }
    notifyListeners();
  }

  void reset() {
    scale = 1.0;
    _previousScale = 1.0;
    pos = Pos(0.0, 0.0);
    _previousPos = Pos(0.0, 0.0);
    _endPos = Pos(0.0, 0.0);
    _isScaled = true;
    notifyListeners();
  }

  void handleDragScaleEnd() {
    _previousScale = 1.0;
    _endPos = pos;
    notifyListeners();
  }

  void setPlaceID(PresentationSearchPlace place) {
    searchPlace = place;
  }
}