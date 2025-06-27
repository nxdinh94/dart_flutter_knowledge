import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';
part 'menu_food_state.freezed.dart';


@freezed
class MenuFoodState with _$MenuFoodState {
  const factory MenuFoodState.loading() = MenuFoodLoading;

  const factory MenuFoodState.loadSuccess(List<FoodEntity> menuFoods) =
    MenuFoodLoadSuccess;

  const factory MenuFoodState.deleteSuccess(List<FoodEntity> menuFoods) =
    MenuFoodDeleteSuccess;

  const factory MenuFoodState.loadFailure(DioException error) =
      MenuFoodLoadFailure;
}
