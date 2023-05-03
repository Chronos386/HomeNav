import 'package:get_it/get_it.dart';
import '../models/domain_search_place.dart';
import '../repository/place_repository.dart';
import '../../presentation/interactors/place_interactor.dart';
import 'package:home_nav/presentation/models/presentation_search_place.dart';

class PlaceInteractorImpl implements PlaceInteractor {
  var placeRepository = GetIt.instance<PlaceRepository>();

  @override
  Future<PresentationSearchPlace> getPlaceByID(int id) async {
    var dataData = await placeRepository.getPlaceByID(id);
    var dataDom = fromDataSearchPlace(dataData);
    return dataDom.toPres();
  }

  @override
  Future<List<PresentationSearchPlace>> getPlacesFiltered(String substring,
      bool onlyClassRoom, bool searchByFloor, int floor) async {
    var dataData = await placeRepository.getPlacesFiltered(substring,
        onlyClassRoom, searchByFloor, floor);
    var dataDom = dataData.map((model) => fromDataSearchPlace(model)).toList();
    return dataDom.map((model) => model.toPres()).toList();
  }
}