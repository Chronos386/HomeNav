import '../../data/models/data_search_place.dart';

abstract class PlaceRepository {
  Future<DataSearchPlace> getPlaceByID(int id);
  Future<List<DataSearchPlace>> getPlacesFiltered(String substring,
      bool onlyClassRoom, bool searchByFloor, int floor);
}