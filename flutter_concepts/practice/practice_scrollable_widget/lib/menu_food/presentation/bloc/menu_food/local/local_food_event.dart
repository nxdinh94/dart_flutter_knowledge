
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';
part 'local_food_event.freezed.dart';

@freezed
class LocalFoodEvent with _$LocalFoodEvent{
  const factory LocalFoodEvent.saveFavoriteFood(FoodEntity foodEntity) = SaveFavoriteFoodEvent;
  const factory LocalFoodEvent.getFavoriteFood()  = GetFavoriteFoodEvent;
}

