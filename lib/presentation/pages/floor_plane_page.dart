import '../../res/global.dart';
import '../bloc/floor_bloc.dart';
import '../widgets/place_item.dart';
import 'package:get_it/get_it.dart';
import '../widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/overlay_widget.dart';
import 'package:provider/provider.dart';
import '../widgets/gridview_widget.dart';
import '../widgets/change_floor_widget.dart';
import '../widgets/reset_button_widget.dart';
import '../../res/generated/locale_keys.g.dart';
import '../models/presentation_search_place.dart';
import '../viewModels/floor_plan_view_model.dart';
import '../viewModels/search_item_view_model.dart';
import '../viewModels/my_position_view_model.dart';
import '../widgets/raw_gesture_detector_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:easy_localization/easy_localization.dart';

class FloorPlanePage extends StatefulWidget {
  const FloorPlanePage({Key? key}) : super(key: key);

  @override
  State<FloorPlanePage> createState() => _FloorPlanePageState();
}

class _FloorPlanePageState extends State<FloorPlanePage> {
  var searchViewModel = GetIt.instance<SearchItemViewModel>();
  var myPositionViewModel = GetIt.instance<MyPositionViewModel>();
  final RefreshController refreshController = RefreshController();

  @override
  void initState() {
    context.read<FloorBloc>().add(const FloorEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FloorPlanModel>(context);
    final stateFloor = context.watch<FloorBloc>().state;
    return Scaffold(
      appBar: model.floorList.isNotEmpty
          ? PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: AppBarWidget(
                searchPlaces: () {
                  context
                      .read<FloorBloc>()
                      .add(FloorEvent.fetchSearch(model.floorList));
                },
              ),
            )
          : PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(
                color: Global.gradOne,
              ),
            ),
      body: stateFloor.when(
        loading: () {
          return Container(
            decoration:
                const BoxDecoration(gradient: Global.backgroundGradient),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Global.textColor,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    LocaleKeys.loading.tr(),
                    style: Global.textHeader,
                  ),
                ],
              ),
            ),
          );
        },
        loaded: (listLoaded) {
          if (model.floorList.isEmpty) {
            setState(() {
              model.floorList = listLoaded;
              model.selectedIndex = model.floorList[0].floor;
              model.urlPict =
                  '${Global.urlPict}${model.floorList[model.floorList[0].floor - 1].photoName}';
            });
            setState(() {
              model.currentIntValue = model.floorList[0].floor;
              model.floorsIdList = [];
              for (var item in model.floorList) {
                model.floorsIdList.add(item.floor);
              }
            });
            if (myPositionViewModel.myPosition == null) {
              Future.delayed(Duration.zero, () => showAlert(context));
            } else {
              model.currentIntValue = myPositionViewModel.myPosition!.floor;
            }
          } else {
            if (myPositionViewModel.touchFindMe) {
              if(myPositionViewModel.myPosition == null) {
                myPositionViewModel.touchFindMe = false;
                Future.delayed(Duration.zero, () => showAlert(context));
              } else {
                setState(() {
                  myPositionViewModel.touchFindMe = false;
                  model.currentIntValue = myPositionViewModel.myPosition!.floor;
                  model.selectedIndex = model.currentIntValue;
                  model.urlPict =
                  '${Global.urlPict}${model.floorList[model.currentIntValue - 1].photoName}';
                });
              }
            }
          }
          return model.floorList.isNotEmpty
              ? StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                  return customView();
                })
              : Container(
                  decoration:
                      const BoxDecoration(gradient: Global.backgroundGradient),
                  child: Center(
                    child: Text(
                      LocaleKeys.nothing_found.tr(),
                      style: Global.textHeader,
                    ),
                  ),
                );
        },
        searchLoaded: (listPlaces) {
          if (listPlaces.isEmpty) {
            return Container(
              decoration: const BoxDecoration(
                gradient: Global.backgroundGradient,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.nothing_found.tr(),
                      style: Global.textHeader,
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Container(
              decoration: const BoxDecoration(
                gradient: Global.backgroundGradient,
              ),
              child: customRefresher(listPlaces),
            );
          }
        },
        error: () => Container(
          decoration: const BoxDecoration(
            gradient: Global.backgroundGradient,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.error_occur.tr(),
                  style: Global.textHeader,
                ),
                const SizedBox(height: 30),
                Text(
                  LocaleKeys.check_internet.tr(),
                  style: Global.textRegular,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customRefresher(List<PresentationSearchPlace> currentList) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: false,
      enablePullDown: false,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PlaceItem(item: currentList[index]);
        },
        separatorBuilder: (_, int index) => const SizedBox(height: 5),
        itemCount: currentList.length,
      ),
    );
  }

  Widget customView() {
    final model = Provider.of<FloorPlanModel>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: Global.backgroundGradient,
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              RawGestureDetectorWidget(
                  child: GridViewWidget(
                      urlPict: model.urlPict, floor: model.selectedIndex)),
              model.hasTouched
                  ? ResetButtonWidget(
                      findMe: () {
                        myPositionViewModel.touchFindMe = true;
                        context.read<FloorBloc>().add(const FloorEvent.fetch());
                      },
                    )
                  : const OverlayWidget(),
              model.hasTouched
                  ? ChangeFloorWidget(
                      currentIntValue: model.selectedIndex,
                      onMinusPress: () {
                        setState(() {
                          final newValue = model.currentIntValue - 1;
                          model.currentIntValue = newValue.clamp(
                              model.floorsIdList[0],
                              model
                                  .floorsIdList[model.floorsIdList.length - 1]);
                          model.selectedIndex = model.currentIntValue;
                          model.urlPict =
                              '${Global.urlPict}${model.floorList[model.currentIntValue - 1].photoName}';
                        });
                      },
                      onPlusPress: () {
                        setState(() {
                          final newValue = model.currentIntValue + 1;
                          model.currentIntValue = newValue.clamp(
                              model.floorsIdList[0],
                              model
                                  .floorsIdList[model.floorsIdList.length - 1]);
                          model.selectedIndex = model.currentIntValue;
                          model.urlPict =
                              '${Global.urlPict}${model.floorList[model.currentIntValue - 1].photoName}';
                        });
                      },
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(LocaleKeys.error.tr()),
        content: Text(LocaleKeys.error_position.tr()),
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
