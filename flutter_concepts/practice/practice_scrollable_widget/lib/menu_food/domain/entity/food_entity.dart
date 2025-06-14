import 'package:equatable/equatable.dart';

class FoodEntity extends Equatable {

  const FoodEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.isDeleted,
    this.ingredients,
    this.instructions,
    this.prepTimeMinutes,
    this.cookTimeMinutes,
    this.servings,
    this.difficulty,
    this.cuisine,
    this.caloriesPerServing,
    this.tags,
    this.userId,
    this.rating,
    this.reviewCount,
    this.mealTypes,
    this.deletedOn,
  });
  final int id;
  final String name;
  final List<String>? ingredients;
  final List<String>? instructions;
  final int? prepTimeMinutes;
  final int? cookTimeMinutes;
  final int? servings;
  final String? difficulty;
  final String? cuisine;
  final int? caloriesPerServing;
  final List<String>? tags;
  final int? userId;
  final double? rating;
  final int? reviewCount;
  final List<String>? mealTypes;
  final String image;
  final bool isDeleted;
  final DateTime? deletedOn;

  @override
  List<Object?> get props => [
    id,
    name,
    ingredients,
    instructions,
    prepTimeMinutes,
    cookTimeMinutes,
    servings,
    difficulty,
    cuisine,
    caloriesPerServing,
    tags,
    userId,
    rating,
    reviewCount,
    mealTypes,
    image,
    isDeleted,
    deletedOn,
  ];
}
