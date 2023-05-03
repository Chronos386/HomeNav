import '../../res/global.dart';
import 'my_photo_view_page.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewModels/place_view_model.dart';
import '../viewModels/floors_view_model.dart';
import '../widgets/custom_bottom_appbar.dart';
import '../../res/generated/locale_keys.g.dart';
import '../viewModels/favorites_view_model.dart';
import '../viewModels/my_position_view_model.dart';
import '../widgets/placeMap/place_gridview_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/placeMap/place_raw_gesture_detector_widget.dart';

class PlacePage extends StatefulWidget {
  const PlacePage({Key? key}) : super(key: key);

  @override
  State<PlacePage> createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {
  var floorViewModel = GetIt.instance<FloorsViewModel>();
  var favoritesViewModel = GetIt.instance<FavoritesViewModel>();
  var myPositionViewModel = GetIt.instance<MyPositionViewModel>();
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final searchViewModel = Provider.of<PlaceViewModel>(context);
    String strUrl = "";
    isFavorite = favoritesViewModel.checkInFavorites(searchViewModel.searchPlace!);
    for (var item in floorViewModel.list) {
      if (searchViewModel.searchPlace!.floor == item.floor) {
        strUrl = item.photoName;
      }
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CustomBottomAppBar(
        thisIsAdded: isFavorite,
        addToFavorite: () {
          favoritesViewModel
              .addOrDelFromFavorites(searchViewModel.searchPlace!);
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        buildRoute: () {
          if (myPositionViewModel.myPosition == null) {
            showAlert(context);
          } else {
            Navigator.of(context).pushNamed("mainPage/fav_place/route");
          }
        },
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: Global.backgroundGradient,
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return MyPhotoViewPage(
                          imageUrl:
                              "${Global.urlPict}${searchViewModel.searchPlace!.photo}");
                    }),
                  );
                },
                child: Hero(
                  tag: "${Global.urlPict}${searchViewModel.searchPlace!.photo}",
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "${Global.urlPict}${searchViewModel.searchPlace!.photo}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Global.filterCheckColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                searchViewModel.searchPlace!.name,
                                style: Global.textVeryBig,
                              ),
                              const SizedBox(height: 10),
                              customDivider(),
                              const SizedBox(height: 10),
                              Text(
                                searchViewModel.searchPlace!.description,
                                style: Global.textRegularNotBold,
                              ),
                              const SizedBox(height: 10),
                              customDivider(),
                              const SizedBox(height: 10),
                              Text(
                                LocaleKeys.floor_p.tr(namedArgs: {
                                  'currentFloor': searchViewModel
                                      .searchPlace!.floor
                                      .toString(),
                                }),
                                style: Global.textRegularNotBold,
                              ),
                              const SizedBox(height: 10),
                              customDivider(),
                              const SizedBox(height: 10),
                              Text(
                                LocaleKeys.room_p.tr(namedArgs: {
                                  'currentRoom':
                                      searchViewModel.searchPlace!.room,
                                }),
                                style: Global.textRegularNotBold,
                              ),
                              const SizedBox(height: 10),
                              customDivider(),
                              const SizedBox(height: 10),
                              Text(
                                LocaleKeys.on_map_p.tr(),
                                style: Global.textHeader,
                              ),
                              const SizedBox(height: 10),
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Global.bottomNavBarColor,
                                      width: 2,
                                    ),
                                    gradient: Global.backgroundGradient,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: PlaceRawGestureDetectorWidget(
                                    child: PlaceGridViewWidget(
                                      urlPict: "${Global.urlPict}$strUrl",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customDivider() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Global.borderColor.withOpacity(0.0),
            Global.borderColor,
            Global.borderColor.withOpacity(0.0),
          ],
          stops: const [0.01, 0.5, 0.99],
        ),
      ),
      child: SizedBox(
        height: 1,
        child: Container(),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(LocaleKeys.error.tr()),
        content: Text(LocaleKeys.build_route_error.tr()),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: Text(LocaleKeys.Ok.tr()),
          ),
        ],
      ),
    );
  }
}
