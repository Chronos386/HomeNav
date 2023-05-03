import 'di/di_coordinator.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:home_nav/res/global.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_nav/res/generated/locale_keys.g.dart';
import 'package:home_nav/presentation/pages/main_page.dart';
import 'package:home_nav/presentation/pages/place_page.dart';
import 'package:home_nav/presentation/pages/route_page.dart';
import 'package:home_nav/res/generated/codegen_loader.g.dart';
import 'package:home_nav/presentation/bloc/route/route_bloc.dart';
import 'package:home_nav/presentation/viewModels/place_view_model.dart';
import 'package:home_nav/presentation/viewModels/favorites_view_model.dart';
import 'package:home_nav/presentation/viewModels/floor_plan_view_model.dart';
import 'package:home_nav/presentation/viewModels/route_plane_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var favoritesViewModel = GetIt.instance<FavoritesViewModel>();

  @override
  Widget build(BuildContext context) {
    favoritesViewModel.initModel();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FloorPlanModel>(
            create: (context) => FloorPlanModel()),
        ChangeNotifierProvider<PlaceViewModel>(
            create: (context) => PlaceViewModel()),
        ChangeNotifierProvider<RoutePlaneViewModel>(
            create: (context) => RoutePlaneViewModel())
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Global.pickerUnsColor),
        routes: {
          'mainPage': (context) => const MainPage(),
          'mainPage/fav_place': (context) => const PlacePage(),
          'mainPage/fav_place/route': (context) => BlocProvider(
            create: (context) => RouteBloc(),
            child: const RoutePage(),
          ),
        },
        initialRoute: 'mainPage',
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute<void>(builder: (context) {
            return Scaffold(
              body: Center(
                child: Text(
                  LocaleKeys.nav_error.tr(),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}