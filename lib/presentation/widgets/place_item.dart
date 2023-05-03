import '../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewModels/place_view_model.dart';
import '../../res/generated/locale_keys.g.dart';
import '../models/presentation_search_place.dart';
import '../viewModels/chosen_place_view_model.dart';
import 'package:easy_localization/easy_localization.dart';

class PlaceItem extends StatelessWidget {
  final PresentationSearchPlace item;
  PlaceItem({Key? key, required this.item}) : super(key: key);
  var chosenPlaceViewModel = GetIt.instance<ChosenPlaceViewModel>();

  @override
  Widget build(BuildContext context) {
    final searchViewModel = Provider.of<PlaceViewModel>(context);
    return ListTile(
      onTap: () {
        searchViewModel.setPlaceID(item);
        chosenPlaceViewModel.setSearchPlace(item);
        Navigator.of(context).pushNamed("mainPage/fav_place");
      },
      title: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          color: Global.filterCheckColor,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Global.gradThree,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: NetworkImage("${Global.urlPict}${item.photo}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 210,
                  width: 150,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              item.name,
                              style: Global.textRegular,
                              maxLines: 2,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              item.description,
                              style: Global.textSmallerNotBold,
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          LocaleKeys.floor_p_room.tr(namedArgs: {
                            'currentFloor': item.floor.toString(),
                            'currentRoom': item.room.toLowerCase(),
                          }),
                          style: Global.textSmallest,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}