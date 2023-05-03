import '../models/presentation_search_place.dart';

abstract class PlaceInteractor {
  Future<PresentationSearchPlace> getPlaceByID(int id);
  Future<List<PresentationSearchPlace>> getPlacesFiltered(String substring,
      bool onlyClassRoom, bool searchByFloor, int floor);
}