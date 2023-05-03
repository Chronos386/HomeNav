import 'package:get_it/get_it.dart';
import '../../models/presentation_floor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../interactors/place_interactor.dart';
import '../../interactors/floor_interactor.dart';
import '../../viewModels/floors_view_model.dart';
import '../../viewModels/favorites_view_model.dart';
import '../../models/presentation_search_place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  var floorViewModel = GetIt.instance<FloorsViewModel>();
  var floorInteractor = GetIt.instance<FloorInteractor>();
  var placeInteractor = GetIt.instance<PlaceInteractor>();
  var favoritesViewModel = GetIt.instance<FavoritesViewModel>();

  FavoritesBloc() : super(const FavoritesState.loading()) {
    on<FavoritesEventFetch>((event, emit) async {
      emit(const FavoritesState.loading());
      try {
        if (favoritesViewModel.listFavoritesId.isNotEmpty) {
          if (floorViewModel.list.isEmpty) {
            List<PresentationFloor> list = await floorInteractor.getAllFloors();
            floorViewModel.list = list;
          }
          if (favoritesViewModel.checkSameLists()) {
            floorViewModel.dataLoaded_2 = true;
            emit(FavoritesState.loaded(
                listPlaces: favoritesViewModel.listFavoritesPlaces));
          } else {
            floorViewModel.dataLoaded_2 = false;
            for (var item in favoritesViewModel.listFavoritesId) {
              PresentationSearchPlace newItem =
                  await placeInteractor.getPlaceByID(item);
              favoritesViewModel.listFavoritesPlaces.add(newItem);
            }
            floorViewModel.dataLoaded_2 = true;
            emit(FavoritesState.loaded(
                listPlaces: favoritesViewModel.listFavoritesPlaces));
          }
        } else {
          floorViewModel.dataLoaded_2 = true;
          emit(const FavoritesState.emptyList());
        }
      } catch (e) {
        floorViewModel.dataLoaded_2 = true;
        emit(const FavoritesState.error());
      }
    });
  }
}
