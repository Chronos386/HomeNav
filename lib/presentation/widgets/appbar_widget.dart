import '../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:numberpicker/numberpicker.dart';
import '../viewModels/floor_plan_view_model.dart';
import '../viewModels/search_item_view_model.dart';
import 'package:easy_localization/easy_localization.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key, required this.searchPlaces}) : super(key: key);
  final VoidCallback searchPlaces;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  int _currentFloor = 1;
  var searchViewModel = GetIt.instance<SearchItemViewModel>();
  late final TextEditingController _textController;

  @override
  void initState() {
    _textController = TextEditingController(text: searchViewModel.substring);
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FloorPlanModel>(context);
    if (searchViewModel.floor == null) {
      searchViewModel.isClass = false;
      searchViewModel.searchByFloor = false;
      searchViewModel.floor = model.floorsIdList[0];
      searchViewModel.substring = "";
    }
    _currentFloor = searchViewModel.floor!;
    return AppBar(
      elevation: 0.0,
      backgroundColor: Global.gradOne,
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Row(
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  controller: _textController,
                  onChanged: (text) {
                    setState(() {
                      searchViewModel.substring = text;
                      widget.searchPlaces();
                    });
                  },
                  style: const TextStyle(color: Global.textColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10.0),
                    filled: true,
                    fillColor: Global.gradTwo,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Global.iconBorderColor,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Global.iconBorderColor, width: 2.0),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: LocaleKeys.search_ppp.tr(),
                    hintStyle: Global.searchText,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 3, bottom: 1, top: 1, left: 1),
              child: Container(
                decoration: const BoxDecoration(
                    color: Global.gradTwo,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: IconButton(
                  padding: const EdgeInsets.all(12),
                  constraints: const BoxConstraints(),
                  icon: const Icon(Icons.filter_alt_sharp,
                      color: Global.iconBorderColor, size: 20.0),
                  onPressed: () => setState(() {
                    showModalBottomSheet<void>(
                      context: context,
                      backgroundColor: Global.filterCheckColor,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return SizedBox(
                              height: 240,
                              child: Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        LocaleKeys.search_filter.tr(),
                                        style: Global.textHeader,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 7,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 9,
                                                      child: Text(
                                                        LocaleKeys
                                                            .search_only_class
                                                            .tr(),
                                                        style: Global.textSmall,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: Checkbox(
                                                        checkColor: Global
                                                            .filterCheckColor,
                                                        fillColor:
                                                            MaterialStateProperty
                                                                .resolveWith(Global
                                                                    .getColor),
                                                        value: searchViewModel
                                                            .isClass,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            searchViewModel
                                                                    .isClass =
                                                                value!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 9,
                                                      child: Text(
                                                        LocaleKeys
                                                            .search_by_floor
                                                            .tr(),
                                                        style: Global.textSmall,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: Checkbox(
                                                        checkColor: Global
                                                            .filterCheckColor,
                                                        fillColor:
                                                            MaterialStateProperty
                                                                .resolveWith(Global
                                                                    .getColor),
                                                        value: searchViewModel
                                                            .searchByFloor,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            searchViewModel
                                                                    .searchByFloor =
                                                                value!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  height: 75,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              right: 10,
                                              top: 30,
                                            ),
                                            child: Column(
                                              children: [
                                                Text(
                                                  LocaleKeys.floor.tr(),
                                                  style: Global.textSmall,
                                                ),
                                                NumberPicker(
                                                  textStyle:
                                                      Global.textPickerSmaller,
                                                  selectedTextStyle:
                                                      Global.textRegular,
                                                  value: _currentFloor,
                                                  minValue:
                                                      model.floorsIdList[0],
                                                  maxValue: model.floorsIdList[
                                                      model.floorsIdList
                                                              .length -
                                                          1],
                                                  step: 1,
                                                  haptics: true,
                                                  onChanged: (value) =>
                                                      setState(
                                                    () => setState(() {
                                                      _currentFloor = value;
                                                      searchViewModel.floor =
                                                          value;
                                                    }),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}