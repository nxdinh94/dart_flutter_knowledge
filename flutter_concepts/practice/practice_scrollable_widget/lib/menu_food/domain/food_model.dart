class FoodModel {
  FoodModel({
    required this.id,
    required this.name,
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
    required this.image,
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
      tags: (json['tags'] is List) ? List<String>.from(json['tags'] as List) : null,
      userId: json['userId'] as int?,
      rating: json['rating'] != null ? (json['rating'] as num).toDouble() : null,
      reviewCount: json['reviewCount'] as int?,
      mealTypes: (json['mealTypes'] is List)
          ? List<String>.from(json['mealTypes'] as List)
          : null,
      image: json['image'] as String,
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
    };
  }
}
