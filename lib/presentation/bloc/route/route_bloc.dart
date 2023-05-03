import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../interactors/route_interactor.dart';
import '../../viewModels/my_route_view_model.dart';
import '../../models/presentation_search_route.dart';
import '../../viewModels/my_position_view_model.dart';
import '../../viewModels/chosen_place_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_bloc.freezed.dart';
part 'route_event.dart';
part 'route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  var routeInteractor = GetIt.instance<RouteInteractor>();
  var myRouteViewModel = GetIt.instance<MyRouteViewModel>();
  var myPositionViewModel = GetIt.instance<MyPositionViewModel>();
  var chosenPlaceViewModel = GetIt.instance<ChosenPlaceViewModel>();

  RouteBloc() : super(const RouteState.loading()) {
    on<RouteEventFetch>((event, emit) async {
      emit(const RouteState.loading());
      try {
        var findRoute = await routeInteractor.findMyRoute(PresentationSearchRoute(
          xPos: myPositionViewModel.myPosition!.x,
          yPos: myPositionViewModel.myPosition!.y,
          floorPos: myPositionViewModel.myPosition!.floor,
          roomPos: myPositionViewModel.myPosition!.room,
          xPlace: chosenPlaceViewModel.searchPlace!.x,
          yPlace: chosenPlaceViewModel.searchPlace!.y,
          floorPlace: chosenPlaceViewModel.searchPlace!.floor,
          roomPlace: chosenPlaceViewModel.searchPlace!.room,
        ));
        myRouteViewModel.setRoute(findRoute);
        emit(const RouteState.loaded());
      } catch (e) {
        emit(const RouteState.error());
      }
    });
  }
}
