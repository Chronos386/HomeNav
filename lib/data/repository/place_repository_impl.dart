import 'package:get_it/get_it.dart';
import '../storage/network/network_storage.dart';
import '../../domain/repository/place_repository.dart';
import 'package:home_nav/data/models/data_filter_place.dart';
import 'package:home_nav/data/models/data_search_place.dart';

class PlaceRepositoryImpl implements PlaceRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<DataSearchPlace> getPlaceByID(int id) async {
    return await networkStore.getPlaceByID(id);
  }

  @override
  Future<List<DataSearchPlace>> getPlacesFiltered(String substring,
      bool onlyClassRoom, bool searchByFloor, int floor) async {
    return await networkStore.getPlacesByFilters(
        DataFilterPlace(
            name: substring,
            only_class: onlyClassRoom,
            search_by_floor: searchByFloor,
            floor: floor
        )
    );
  }
}