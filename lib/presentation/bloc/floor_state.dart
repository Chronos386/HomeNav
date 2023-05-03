part of 'floor_bloc.dart';

@freezed
class FloorState with _$FloorState {
  const factory FloorState.loading() = FloorStateLoading;
  const factory FloorState.loaded({required List<PresentationFloor> listLoaded}) = FloorStateLoaded;
  const factory FloorState.searchLoaded({required List<PresentationSearchPlace> listPlaces}) = FloorStateSearchLoaded;
  const factory FloorState.error() = FloorStateError;
}