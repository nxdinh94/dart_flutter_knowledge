class FoodModel {
  FoodModel({
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
    };
  }
}
