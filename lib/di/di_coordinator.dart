import 'package:get_it/get_it.dart';
import '../data/storage/ble/ble_storage.dart';
import '../data/storage/ble/ble_storage_impl.dart';
import '../domain/repository/floor_repository.dart';
import '../domain/repository/place_repository.dart';
import '../domain/repository/route_repository.dart';
import '../data/storage/network/network_storage.dart';
import '../data/repository/route_repository_impl.dart';
import '../domain/repository/position_repository.dart';
import '../data/repository/floor_repository_impl.dart';
import '../data/repository/place_repository_impl.dart';
import '../domain/interactors/route_interactor_impl.dart';
import '../domain/interactors/place_interactor_impl.dart';
import '../domain/interactors/floor_interactor_impl.dart';
import '../data/repository/position_repository_impl.dart';
import '../presentation/interactors/route_interactor.dart';
import '../presentation/viewModels/floors_view_model.dart';
import '../presentation/interactors/floor_interactor.dart';
import '../data/storage/network/network_storage_impl.dart';
import '../presentation/interactors/place_interactor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../presentation/viewModels/my_route_view_model.dart';
import '../domain/interactors/position_interactor_impl.dart';
import '../presentation/interactors/position_interactor.dart';
import '../presentation/viewModels/favorites_view_model.dart';
import '../presentation/viewModels/my_position_view_model.dart';
import '../presentation/viewModels/search_item_view_model.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import '../presentation/viewModels/chosen_place_view_model.dart';

final get = GetIt.instance;

void setupGetIt() {
  get.registerSingletonAsync<SharedPreferences>(
          () => SharedPreferences.getInstance()
  );
  get.registerLazySingleton<FlutterReactiveBle>(() => FlutterReactiveBle());
  get.registerFactory<BleStorage>(() => BleStorageImpl());
  get.registerFactory<NetworkStorage>(() => NetworkStorageImpl());
  get.registerFactory<FloorRepository>(() => FloorRepositoryImpl());
  get.registerFactory<FloorInteractor>(() => FloorInteractorImpl());
  get.registerFactory<PlaceRepository>(() => PlaceRepositoryImpl());
  get.registerFactory<PlaceInteractor>(() => PlaceInteractorImpl());
  get.registerFactory<RouteRepository>(() => RouteRepositoryImpl());
  get.registerFactory<RouteInteractor>(() => RouteInteractorImpl());
  get.registerFactory<PositionRepository>(() => PositionRepositoryImpl());
  get.registerFactory<PositionInteractor>(() => PositionInteractorImpl());
  get.registerLazySingleton<FloorsViewModel>(() => FloorsViewModel());
  get.registerLazySingleton<MyRouteViewModel>(() => MyRouteViewModel());
  get.registerLazySingleton<FavoritesViewModel>(() => FavoritesViewModel());
  get.registerLazySingleton<SearchItemViewModel>(() => SearchItemViewModel());
  get.registerLazySingleton<MyPositionViewModel>(() => MyPositionViewModel());
  get.registerLazySingleton<ChosenPlaceViewModel>(() => ChosenPlaceViewModel());
}