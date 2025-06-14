import 'package:json_annotation/json_annotation.dart';
import 'package:practice_scrollable_widget/menu_food/domain/entity/food_entity.dart';

@JsonSerializable()
class FoodModel extends FoodEntity {
  const FoodModel({
    required super.id,
    required super.name,
    required super.image,
    required super.isDeleted,
    super.ingredients,
    super.instructions,
    super.prepTimeMinutes,
    super.cookTimeMinutes,
    super.servings,
    super.difficulty,
    super.cuisine,
    super.caloriesPerServing,
    super.tags,
    super.userId,
    super.rating,
    super.reviewCount,
    super.mealTypes,
    super.deletedOn,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      id: json['id'] as int,
      name: json['name'] as String,
      ingredients: (json['ingredients'] is List)
          ? List<String>.from(json['ingredients'] as List)
          : null,
      instructions: (json['instructions'] is List)
          ? List<String>.from(json['instructions'] as List)
          : null,
      prepTimeMinutes: json['prepTimeMinutes'] as int?,
      cookTimeMinutes: json['cookTimeMinutes'] as int?,
      servings: json['servings'] as int?,
      difficulty: json['difficulty'] as String?,
      cuisine: json['cuisine'] as String?,
      caloriesPerServing: json['caloriesPerServing'] as int?,
      tags: (json['tags'] is List)
          ? List<String>.from(json['tags'] as List)
          : null,
      userId: json['userId'] as int?,
      rating: json['rating'] != null
          ? (json['rating'] as num).toDouble()
          : null,
      reviewCount: json['reviewCount'] as int?,
      mealTypes: (json['mealTypes'] is List)
          ? List<String>.from(json['mealTypes'] as List)
          : null,
      image: json['image'] as String,
      isDeleted: json['isDeleted'] as bool? ?? false,
      deletedOn: json['deletedOn'] != null
          ? DateTime.parse(json['deletedOn'] as String)
          : null,
    );
  }

  FoodModel copyWith({
    int? id,
    String? name,
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
    String? image,
    bool? isDeleted,
    DateTime? deletedOn,
  }) {
    return FoodModel(
      id: id ?? this.id,
      name: name ?? this.name,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      prepTimeMinutes: prepTimeMinutes ?? this.prepTimeMinutes,
      cookTimeMinutes: cookTimeMinutes ?? this.cookTimeMinutes,
      servings: servings ?? this.servings,
      difficulty: difficulty ?? this.difficulty,
      cuisine: cuisine ?? this.cuisine,
      caloriesPerServing: caloriesPerServing ?? this.caloriesPerServing,
      tags: tags ?? this.tags,
      userId: userId ?? this.userId,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      mealTypes: mealTypes ?? this.mealTypes,
      image: image ?? this.image,
      isDeleted: isDeleted ?? this.isDeleted,
      deletedOn: deletedOn ?? this.deletedOn,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'ingredients': ingredients,
      'instructions': instructions,
      'prepTimeMinutes': prepTimeMinutes,
      'cookTimeMinutes': cookTimeMinutes,
      'servings': servings,
      'difficulty': difficulty,
      'cuisine': cuisine,
      'caloriesPerServing': caloriesPerServing,
      'tags': tags,
      'userId': userId,
      'rating': rating,
      'reviewCount': reviewCount,
      'mealTypes': mealTypes,
      'image': image,
      'isDeleted': isDeleted,
      'deletedOn': deletedOn?.toIso8601String(),
    };
  }
}
