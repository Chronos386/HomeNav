import 'package:get_it/get_it.dart';
import '../repository/position_repository.dart';
import 'package:home_nav/domain/models/domain_my_position.dart';
import '../../presentation/interactors/position_interactor.dart';
import 'package:home_nav/presentation/models/presentation_my_position.dart';

class PositionInteractorImpl implements PositionInteractor {
  var positionRepository = GetIt.instance<PositionRepository>();

  @override
  Future<PresentationMyPosition?> getMyPosition() async {
    var dataData = await positionRepository.getMyPosition();
    if (dataData != null) {
      var dataDom = fromDataMyPosition(dataData);
      return dataDom.toPres();
    } else {
      return null;
    }
  }
}