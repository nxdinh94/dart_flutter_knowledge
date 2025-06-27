
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

part 'menu_food_event.freezed.dart';

@freezed
class MenuFoodEvent with _$MenuFoodEvent {
  const factory MenuFoodEvent.load() = MenuFoodLoadEvent;
  const factory MenuFoodEvent.getAll() = MenuFoodGetAllEvent;
  const factory MenuFoodEvent.delete(String foodId) = MenuFoodDeleteEvent;
  const factory MenuFoodEvent.saveToFavorite(FoodEntity foodEntity) = SaveToFavorite;
}

