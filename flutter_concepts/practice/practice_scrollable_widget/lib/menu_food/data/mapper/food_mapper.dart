import 'package:practice_scrollable_widget/menu_food/domain/entity/food_entity.dart';
import '../model/food_model.dart';

extension FoodEntityMapper on FoodModel {
  FoodEntity toEntity() {
    return FoodEntity(
      id: id as int,
      name: name,
      image: image,
      isDeleted: isDeleted,
      ingredients: ingredients,
      instructions: instructions,
      prepTimeMinutes: prepTimeMinutes,
      cookTimeMinutes: cookTimeMinutes,
      servings: servings,
      difficulty: difficulty,
      cuisine: cuisine,
      caloriesPerServing: caloriesPerServing,
      tags: tags,
      userId: userId,
      rating: rating,
      reviewCount: reviewCount,
      mealTypes: mealTypes,
      deletedOn: deletedOn,
    );
  }
}
