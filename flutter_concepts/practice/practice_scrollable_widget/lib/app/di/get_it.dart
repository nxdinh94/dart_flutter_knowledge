import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/app/app.dart';
import 'package:practice_scrollable_widget/menu_food/data/food_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies()async =>getIt.init();

@module
abstract class RegisterModule {
  @singleton
  Dio dio (CustomInterceptors customInterceptors) {
    final dio = Dio();
    dio.interceptors.add(customInterceptors);
    return dio;
  }

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  FoodRestApi foodRestApi(Dio dio) => FoodRestApi(dio);
  @singleton
  CustomNavigationHelper customNavigationHelper(){
    var initialRoute = '/';
    const isAuthenticated = false;
    isAuthenticated ? initialRoute = '/schoolHome' : initialRoute = '/';
    final customNavigationHelper = CustomNavigationHelper(initialRoute);
    return customNavigationHelper;
  }
}
