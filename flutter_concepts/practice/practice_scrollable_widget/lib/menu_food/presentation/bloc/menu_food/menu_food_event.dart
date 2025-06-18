
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_food_event.freezed.dart';

@freezed
class MenuFoodEvent with _$MenuFoodEvent {
  const factory MenuFoodEvent.load() = MenuFoodLoadEvent;
  const factory MenuFoodEvent.getAll() = MenuFoodGetAllEvent;
  const factory MenuFoodEvent.delete(String foodId) = MenuFoodDeleteEvent;
}

