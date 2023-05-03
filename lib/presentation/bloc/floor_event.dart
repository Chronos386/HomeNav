part of 'floor_bloc.dart';

@freezed
class FloorEvent with _$FloorEvent {
  const factory FloorEvent.fetch() = FloorEventFetch;
  const factory FloorEvent.fetchSearch(
      List<PresentationFloor> listLoaded) = FloorEventSearchFetch;
}