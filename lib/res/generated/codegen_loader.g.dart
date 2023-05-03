// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "nav_error": "Произошла ошибка навигации",
  "start_by_drag": "Начните с перетаскивания пальцами",
  "floor": "Этаж",
  "floor_p": "Этаж: {currentFloor}",
  "search_by_floor": "Искать по этажу",
  "search_only_class": "Искать только помещения",
  "search_filter": "Фильтр поиска",
  "search_ppp": "Поиск...",
  "map": "Карта",
  "favorites": "Избранное",
  "loading": "Загрузка...",
  "nothing_found": "Ничего не найдено",
  "error_occur": "Произошла ошибка",
  "check_internet": "Проверьте своё подключение к интернету или включите Bluetooth",
  "error": "Ошибка!",
  "error_position": "Ваше местоположение не найдено. Возможно, Вы находитесь вне здания",
  "Ok": "Ок",
  "floor_p_room": "Этаж: {currentFloor} / Комната: {currentRoom}",
  "room_p": "Комната: {currentRoom}",
  "on_map_p": "На карте:",
  "build_route": "Построить маршрут",
  "build_route_error": "К сожалению, мы не можем построить маршрут, пока не установим Ваше местоположение. Пожалуйста, переместитесь внутрь здания и повторите попытку.",
  "empty_favorites": "Ваш список избранных пока пуст. Добавьте в него что-то, чтобы всегда иметь быстрый доступ к своим любимым местам!",
  "route": "Маршрут"
};
static const Map<String,dynamic> en = {
  "nav_error": "A navigation error has occurred",
  "start_by_drag": "Start by dragging with your fingers",
  "floor": "Floor",
  "floor_p": "Floor: {currentFloor}",
  "search_by_floor": "Search by floor",
  "search_only_class": "Search only premises",
  "search_filter": "Search filter",
  "search_ppp": "Search...",
  "map": "Map",
  "favorites": "Favorites",
  "loading": "Load...",
  "nothing_found": "Nothing found",
  "error_occur": "An error has occurred",
  "check_internet": "Check your internet connection or turn on bluetooth",
  "error": "Error!",
  "error_position": "Your location wasn't found. You may be outside the building",
  "Ok": "Ok",
  "floor_p_room": "Floor: {currentFloor} / Room: {currentRoom}",
  "room_p": "Room: {currentRoom}",
  "on_map_p": "On map:",
  "build_route": "Build a route",
  "build_route_error": "Unfortunately, we cannot calculate a route until we determine your location. Please move indoors and try again.",
  "empty_favorites": "Your favorites list is currently empty. Add something to it to always have quick access to your favorite places!",
  "route": "Route"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "en": en};
}
