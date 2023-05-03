part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.loading() = FavoritesStateLoading;
  const factory FavoritesState.emptyList() = FavoritesStateEmptyList;
  const factory FavoritesState.loaded({required List<PresentationSearchPlace> listPlaces}) = FavoritesStateLoaded;
  const factory FavoritesState.error() = FavoritesStateError;
}