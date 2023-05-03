import '../models/presentation_my_route.dart';
import '../models/presentation_search_route.dart';

abstract class RouteInteractor {
  Future<PresentationMyRoute> findMyRoute(PresentationSearchRoute searchRoute);
}