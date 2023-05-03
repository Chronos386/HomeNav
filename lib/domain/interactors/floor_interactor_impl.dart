import 'package:get_it/get_it.dart';
import '../models/domain_floor.dart';
import '../repository/floor_repository.dart';
import '../../presentation/interactors/floor_interactor.dart';
import 'package:home_nav/presentation/models/presentation_floor.dart';

class FloorInteractorImpl implements FloorInteractor {
  var floorRepository = GetIt.instance<FloorRepository>();

  @override
  Future<List<PresentationFloor>> getAllFloors() async {
    var dataData = await floorRepository.getAllFloors();
    var dataDom = dataData.map((model) => fromDataFloor(model)).toList();
    return dataDom.map((model) => model.toPres()).toList();
  }
}