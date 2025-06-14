
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:practice_scrollable_widget/menu_food/data/food_data.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupInjection()async {
  getIt
  ..registerSingleton<SharedPreferences>(await SharedPreferences.getInstance())
  ..registerSingleton<Dio>(Dio())
  ..registerSingleton<FoodRestApi>(FoodRestApi(getIt()))
  ..registerSingleton<FoodRepository>(FoodRepositoryImp(getIt()))
  ..registerSingleton<GetAllFoodUseCase>(GetAllFoodUseCase(getIt()))
  ..registerSingleton<DeleteFoodUseCase>(DeleteFoodUseCase(getIt()))
  ..registerSingleton<MenuFoodBloc>(MenuFoodBloc(getIt(), getIt()))
  ..registerSingleton<SwitchLayoutBloc>(SwitchLayoutBloc());
}
