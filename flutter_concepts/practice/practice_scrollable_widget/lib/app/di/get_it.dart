import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/menu_food/data/food_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  FoodRestApi foodRestApi(Dio dio) => FoodRestApi(dio);

  @singleton
  Dio get dio => Dio();
}
