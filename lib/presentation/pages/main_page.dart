import 'favourites_page.dart';
import '../../res/global.dart';
import 'floor_plane_page.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../viewModels/floors_view_model.dart';
import '../bloc/fav_place/favorites_bloc.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_nav/presentation/bloc/floor_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  var floorViewModel = GetIt.instance<FloorsViewModel>();
  static final List<Widget> _widgetOptions = <Widget>[
    BlocProvider(
      create: (context) => FloorBloc(),
      child: const FloorPlanePage(),
    ),
    BlocProvider(
      create: (context) => FavoritesBloc(),
      child: const FavoritesPage(),
    )
  ];

  void _onItemTapped(int index) {
    if(!floorViewModel.dataLoaded_1 && (index == 1)) {
      return;
    }
    if(!floorViewModel.dataLoaded_2 && (index == 0)) {
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Global.bottomNavBarColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.map_outlined, color: Global.iconsColor),
            label: LocaleKeys.map.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bookmark, color: Global.iconsColor),
            label: LocaleKeys.favorites.tr(),

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Global.iconsColor,
        unselectedItemColor: Global.iconsColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
