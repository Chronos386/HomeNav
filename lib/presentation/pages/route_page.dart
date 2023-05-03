import '../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../bloc/route/route_bloc.dart';
import 'package:provider/provider.dart';
import '../viewModels/place_view_model.dart';
import '../widgets/change_floor_widget.dart';
import '../viewModels/floors_view_model.dart';
import '../../res/generated/locale_keys.g.dart';
import '../viewModels/my_route_view_model.dart';
import '../widgets/routeMap/route_gridview_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/routeMap/route_reset_button_widget.dart';
import '../widgets/routeMap/route_raw_gesture_detector_widget.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  var floorsViewModel = GetIt.instance<FloorsViewModel>();
  var myRouteViewModel = GetIt.instance<MyRouteViewModel>();

  @override
  void initState() {
    context.read<RouteBloc>().add(const RouteEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<PlaceViewModel>(context);
    final stateFloor = context.watch<RouteBloc>().state;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.route.tr(),
          style: Global.textRegular,
        ),
        backgroundColor: Global.appBarTwo,
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
        loaded: () {
          if (model.floorsIdList.isEmpty) {
            setState(() {
              model.floorsIdList = [];
              for (var item in floorsViewModel.list) {
                model.floorsIdList.add(item.floor);
              }
              model.selectedIndex = myRouteViewModel.myRoute!.route[0].floor;
              model.currentIntValue = myRouteViewModel.myRoute!.route[0].floor;
              model.urlPict =
              '${Global.urlPict}${floorsViewModel.list[model.currentIntValue - 1].photoName}';
            });
          }
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return customView();
          });
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

  Widget customView() {
    final model = Provider.of<PlaceViewModel>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: Global.backgroundGradient,
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              RouteRawGestureDetectorWidget(
                  child: RouteGridViewWidget(
                      urlPict: model.urlPict, floor: model.selectedIndex)),
              const RouteResetButtonWidget(),
              ChangeFloorWidget(
                currentIntValue: model.selectedIndex,
                onMinusPress: () {
                  setState(() {
                    final newValue = model.currentIntValue - 1;
                    model.currentIntValue = newValue.clamp(
                        model.floorsIdList[0],
                        model.floorsIdList[model.floorsIdList.length - 1]);
                    model.selectedIndex = model.currentIntValue;
                    model.urlPict =
                        '${Global.urlPict}${floorsViewModel.list[model.currentIntValue - 1].photoName}';
                  });
                },
                onPlusPress: () {
                  setState(() {
                    final newValue = model.currentIntValue + 1;
                    model.currentIntValue = newValue.clamp(
                        model.floorsIdList[0],
                        model.floorsIdList[model.floorsIdList.length - 1]);
                    model.selectedIndex = model.currentIntValue;
                    model.urlPict =
                        '${Global.urlPict}${floorsViewModel.list[model.currentIntValue - 1].photoName}';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}