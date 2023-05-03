import 'package:get_it/get_it.dart';
import '../models/domain_my_route.dart';
import '../models/domain_search_route.dart';
import '../repository/route_repository.dart';
import '../../data/models/data_my_route.dart';
import '../../presentation/interactors/route_interactor.dart';
import 'package:home_nav/presentation/models/presentation_my_route.dart';
import 'package:home_nav/presentation/models/presentation_search_route.dart';

class RouteInteractorImpl implements RouteInteractor {
  var routeRepository = GetIt.instance<RouteRepository>();

  @override
  Future<PresentationMyRoute> findMyRoute(
      PresentationSearchRoute searchRoute) async {
    DomainSearchRoute domSearchRoute = fromPresentationSearchRoute(searchRoute);
    DataMyRoute dataMyRoute =
        await routeRepository.findMyRoute(domSearchRoute.toData());
    return fromDataMyRoute(dataMyRoute).toPres();
  }
}