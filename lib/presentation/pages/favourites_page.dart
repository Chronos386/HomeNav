import '../../res/global.dart';
import '../widgets/place_item.dart';
import 'package:flutter/material.dart';
import '../bloc/fav_place/favorites_bloc.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/presentation_search_place.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:easy_localization/easy_localization.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final RefreshController refreshController = RefreshController();

  @override
  void initState() {
    context.read<FavoritesBloc>().add(const FavoritesEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final stateFavorites = context.watch<FavoritesBloc>().state;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.favorites.tr(),
          style: Global.textRegular,
        ),
        backgroundColor: Global.appBarTwo,
      ),
      body: stateFavorites.when(
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
        emptyList: () {
          return Container(
            decoration:
            const BoxDecoration(gradient: Global.backgroundGradient),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      LocaleKeys.empty_favorites.tr(),
                      style: Global.textRegular,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        loaded: (List<PresentationSearchPlace> loadedList) {
          return Container(
            decoration: const BoxDecoration(
              gradient: Global.backgroundGradient,
            ),
            child: customRefresher(loadedList),
          );
        },
        error: () {
          return Container(
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
          );
        },
      ),
    );
  }

  Widget customRefresher(List<PresentationSearchPlace> currentList) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: false,
      enablePullDown: true,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PlaceItem(item: currentList[index]);
        },
        separatorBuilder: (_, int index) => const SizedBox(height: 5),
        itemCount: currentList.length,
      ),
      onRefresh: () {
        context.read<FavoritesBloc>().add(const FavoritesEvent.fetch());
        refreshController.refreshCompleted();
      },
    );
  }
}
