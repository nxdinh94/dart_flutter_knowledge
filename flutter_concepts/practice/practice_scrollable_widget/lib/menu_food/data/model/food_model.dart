import 'package:freezed_annotation/freezed_annotation.dart';
part 'food_model.freezed.dart';
part 'food_model.g.dart';

@freezed
abstract class FoodModel  with _$FoodModel {
  const factory FoodModel({
    required id,
    required String name,
    required String image,
    @Default(false) bool isDeleted,
    List<String>? ingredients,
    List<String>? instructions,
    int? prepTimeMinutes,
    int? cookTimeMinutes,
    int? servings,
    String? difficulty,
    String? cuisine,
    int? caloriesPerServing,
    List<String>? tags,
    int? userId,
    double? rating,
    int? reviewCount,
    List<String>? mealTypes,
    DateTime? deletedOn,
  }) = _FoodModel;

  factory FoodModel.fromJson(Map<String, dynamic> json) => _$FoodModelFromJson(json);
}
