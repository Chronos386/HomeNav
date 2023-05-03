import '../models/presentation_search_place.dart';

class ChosenPlaceViewModel {
  PresentationSearchPlace? searchPlace;

  void setSearchPlace(PresentationSearchPlace place) {
    searchPlace = place;
  }
}