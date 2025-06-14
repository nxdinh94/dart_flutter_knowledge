

import 'package:practice_scrollable_widget/core/data_state.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

abstract class FoodRepository {
  Future<DataState<List<FoodEntity>>> getAllFood();
  Future<DataState<FoodEntity>> deleteFood(String id);
}
