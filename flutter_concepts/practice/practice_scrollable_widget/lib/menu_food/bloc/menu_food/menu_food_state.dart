import 'package:practice_scrollable_widget/menu_food/domain/food_model.dart';

sealed class MenuFoodState {
  const MenuFoodState({this.error, this.menuFoods});

  final Exception? error;
  final List<FoodModel>? menuFoods;
}

class MenuFoodLoading extends MenuFoodState {
  const MenuFoodLoading() : super();
}

class MenuFoodLoadSuccess extends MenuFoodState {
  const MenuFoodLoadSuccess(List<FoodModel> menuFoods)
    : super(menuFoods: menuFoods);
}

class MenuFoodDeleteSuccess extends MenuFoodState {
  const MenuFoodDeleteSuccess(List<FoodModel> menuFoods)
    : super(menuFoods: menuFoods);
}

class MenuFoodLoadFailure extends MenuFoodState {
  MenuFoodLoadFailure(String error)
    : super(error: Exception(error));
}
