import 'package:get_it/get_it.dart';
import '../models/presentation_search_place.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesViewModel {
  List<int> listFavoritesId = [];
  var prefs = GetIt.instance<SharedPreferences>();
  List<PresentationSearchPlace> listFavoritesPlaces = [];

  void initModel() {
    listFavoritesId = [];
    List<String>? favoritesStringId = prefs.getStringList("favoritesID");
    if (favoritesStringId != null) {
      for(var item in favoritesStringId) {
        listFavoritesId.add(int.parse(item));
      }
    }
  }

  void addOrDelFromFavorites(PresentationSearchPlace place) {
    if(listFavoritesId.contains(place.id)) {
      int searchIndex = listFavoritesId.indexOf(place.id);
      listFavoritesId.removeAt(searchIndex);
    } else {
      listFavoritesId.add(place.id);
    }
    List<String> favoritesStringId = [];
    for(var item in listFavoritesId) {
      favoritesStringId.add(item.toString());
    }
    listFavoritesPlaces.clear();
    prefs.setStringList("favoritesID", favoritesStringId);
  }

  bool checkSameLists() {
    bool listsSame = true;
    if(listFavoritesId.length == listFavoritesPlaces.length) {
      int index = 0;
      while ((index != listFavoritesId.length) && listsSame) {
        if (listFavoritesId[index] != listFavoritesPlaces[index].id) {
          listsSame = false;
          listFavoritesPlaces.clear();
        }
        index++;
      }
    } else {
      listFavoritesPlaces.clear();
      listsSame = false;
    }
    return listsSame;
  }

  bool checkInFavorites(PresentationSearchPlace place) {
    return listFavoritesId.contains(place.id);
  }
}