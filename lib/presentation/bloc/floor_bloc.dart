import 'package:get_it/get_it.dart';
import '../models/presentation_floor.dart';
import '../viewModels/floors_view_model.dart';
import '../interactors/place_interactor.dart';
import '../interactors/floor_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/presentation_my_position.dart';
import '../models/presentation_search_place.dart';
import '../viewModels/my_position_view_model.dart';
import '../viewModels/search_item_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_nav/presentation/interactors/position_interactor.dart';

part 'floor_bloc.freezed.dart';
part 'floor_event.dart';
part 'floor_state.dart';

class FloorBloc extends Bloc<FloorEvent, FloorState> {
  var floorViewModel = GetIt.instance<FloorsViewModel>();
  var floorInteractor = GetIt.instance<FloorInteractor>();
  var placeInteractor = GetIt.instance<PlaceInteractor>();
  var myPosInteractor = GetIt.instance<PositionInteractor>();
  var searchViewModel = GetIt.instance<SearchItemViewModel>();
  var myPositionViewModel = GetIt.instance<MyPositionViewModel>();

  FloorBloc() : super(const FloorState.loading()) {
    on<FloorEventFetch>((event, emit) async {
      emit(const FloorState.loading());
      try {
        List<PresentationFloor> list = [];
        if(floorViewModel.list.isEmpty) {
          list = await floorInteractor.getAllFloors();
          floorViewModel.list = list;
        } else {
          list = floorViewModel.list;
        }
        if (myPositionViewModel.position.isEmpty) {
          if (myPositionViewModel.firsTime ||
              (myPositionViewModel.touchFindMe == true)) {
            floorViewModel.dataLoaded_1 = false;
            PresentationMyPosition? myPos =
                await myPosInteractor.getMyPosition();
            myPositionViewModel.firsTime = false;
            if (myPos != null) {
              myPositionViewModel.setMyPosition(myPos);
            }
          }
          floorViewModel.dataLoaded_1 = true;
          emit(FloorState.loaded(listLoaded: list));
        } else {
          if (myPositionViewModel.touchFindMe) {
            floorViewModel.dataLoaded_1 = false;
            PresentationMyPosition? myPos =
                await myPosInteractor.getMyPosition();
            if (myPos != null) {
              myPositionViewModel.setMyPosition(myPos);
            }
          }
          floorViewModel.dataLoaded_1 = true;
          emit(FloorState.loaded(listLoaded: list));
        }
      } catch (e) {
        floorViewModel.dataLoaded_1 = true;
        emit(const FloorState.error());
      }
    });
    on<FloorEventSearchFetch>((event, emit) async {
      emit(const FloorState.loading());
      try {
        if (searchViewModel.substring == "") {
          emit(FloorState.loaded(listLoaded: event.listLoaded));
        } else {
          List<PresentationSearchPlace> listPlaces =
              await placeInteractor.getPlacesFiltered(
                  searchViewModel.substring!,
                  searchViewModel.isClass!,
                  searchViewModel.searchByFloor!,
                  searchViewModel.floor!);
          emit(FloorState.searchLoaded(listPlaces: listPlaces));
        }
      } catch (_) {
        emit(const FloorState.error());
      }
    });
  }
}
