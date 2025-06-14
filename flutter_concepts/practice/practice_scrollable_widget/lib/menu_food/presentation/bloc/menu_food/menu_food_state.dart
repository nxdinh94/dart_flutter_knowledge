import 'package:dio/dio.dart';
import 'package:practice_scrollable_widget/menu_food/data/model/food_model.dart';
import 'package:practice_scrollable_widget/menu_food/domain/entity/food_entity.dart';

sealed class MenuFoodState {
  const MenuFoodState({this.error, this.menuFoods});

  final DioException? error;
  final List<FoodEntity>? menuFoods;
}

class MenuFoodLoading extends MenuFoodState {
  const MenuFoodLoading() : super();
}

class MenuFoodLoadSuccess extends MenuFoodState {
  const MenuFoodLoadSuccess(List<FoodEntity> menuFoods)
    : super(menuFoods: menuFoods);
}

class MenuFoodDeleteSuccess extends MenuFoodState {
  const MenuFoodDeleteSuccess(List<FoodEntity> menuFoods)
    : super(menuFoods: menuFoods);
}

class MenuFoodLoadFailure extends MenuFoodState {
  MenuFoodLoadFailure(DioException error)
    : super(error: error);
}
