
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

part 'local_food_state.freezed.dart';

@freezed
class LocalFoodState with _$LocalFoodState {
  const factory LocalFoodState.loading() = LocalFoodLoading;

  const factory LocalFoodState.loadSuccess(List<FoodEntity> menuFoods) =
  LocalFoodLoadSuccess;

  const factory LocalFoodState.deleteSuccess(List<FoodEntity> menuFoods) =
  LocalFoodDeleteSuccess;

  const factory LocalFoodState.loadFailure(DioException error) =
  LocalFoodLoadFailure;
}
