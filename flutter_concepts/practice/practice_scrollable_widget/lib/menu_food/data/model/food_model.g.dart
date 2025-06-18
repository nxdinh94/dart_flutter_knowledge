// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => _FoodModel(
      id: json['id'],
      name: json['name'] as String,
      image: json['image'] as String,
      isDeleted: json['isDeleted'] as bool? ?? false,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      prepTimeMinutes: (json['prepTimeMinutes'] as num?)?.toInt(),
      cookTimeMinutes: (json['cookTimeMinutes'] as num?)?.toInt(),
      servings: (json['servings'] as num?)?.toInt(),
      difficulty: json['difficulty'] as String?,
      cuisine: json['cuisine'] as String?,
      caloriesPerServing: (json['caloriesPerServing'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userId: (json['userId'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      mealTypes: (json['mealTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deletedOn: json['deletedOn'] == null
          ? null
          : DateTime.parse(json['deletedOn'] as String),
    );

Map<String, dynamic> _$FoodModelToJson(_FoodModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'isDeleted': instance.isDeleted,
      'ingredients': instance.ingredients,
      'instructions': instance.instructions,
      'prepTimeMinutes': instance.prepTimeMinutes,
      'cookTimeMinutes': instance.cookTimeMinutes,
      'servings': instance.servings,
      'difficulty': instance.difficulty,
      'cuisine': instance.cuisine,
      'caloriesPerServing': instance.caloriesPerServing,
      'tags': instance.tags,
      'userId': instance.userId,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'mealTypes': instance.mealTypes,
      'deletedOn': instance.deletedOn?.toIso8601String(),
    };
