// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../menu_food/data/food_data.dart' as _i82;
import '../../menu_food/data/repository/food_repository_imp.dart' as _i84;
import '../../menu_food/domain/entity/food_entity.dart' as _i782;
import '../../menu_food/domain/food_domain.dart' as _i909;
import '../../menu_food/domain/useCase/delete_food_use_case.dart' as _i920;
import '../../menu_food/domain/useCase/get_all_food_use_case.dart' as _i42;
import '../../menu_food/presentation/bloc/menu_food/menu_food_bloc.dart'
    as _i50;
import '../../menu_food/presentation/bloc/switch_layout/switch_layout_bloc.dart'
    as _i790;
import 'get_it.dart' as _i241;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i790.SwitchLayoutBloc>(() => _i790.SwitchLayoutBloc());
    gh.factory<_i782.FoodEntity>(() => _i782.FoodEntity(
          id: gh<int>(),
          name: gh<String>(),
          image: gh<String>(),
          isDeleted: gh<bool>(),
          ingredients: gh<List<String>>(),
          instructions: gh<List<String>>(),
          prepTimeMinutes: gh<int>(),
          cookTimeMinutes: gh<int>(),
          servings: gh<int>(),
          difficulty: gh<String>(),
          cuisine: gh<String>(),
          caloriesPerServing: gh<int>(),
          tags: gh<List<String>>(),
          userId: gh<int>(),
          rating: gh<double>(),
          reviewCount: gh<int>(),
          mealTypes: gh<List<String>>(),
          deletedOn: gh<DateTime>(),
        ));
    gh.singleton<_i82.FoodRestApi>(
        () => registerModule.foodRestApi(gh<_i361.Dio>()));
    gh.factory<_i909.FoodRepository>(
        () => _i84.FoodRepositoryImp(gh<_i82.FoodRestApi>()));
    gh.factory<_i920.DeleteFoodUseCase>(
        () => _i920.DeleteFoodUseCase(gh<_i909.FoodRepository>()));
    gh.factory<_i42.GetAllFoodUseCase>(
        () => _i42.GetAllFoodUseCase(gh<_i909.FoodRepository>()));
    gh.singleton<_i50.MenuFoodBloc>(() => _i50.MenuFoodBloc(
          gh<_i909.GetAllFoodUseCase>(),
          gh<_i909.DeleteFoodUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i241.RegisterModule {}
