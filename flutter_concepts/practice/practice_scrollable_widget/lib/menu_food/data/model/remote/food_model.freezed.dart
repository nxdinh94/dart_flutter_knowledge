// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodModel {
  dynamic get id;
  String get name;
  String get image;
  bool get isDeleted;
  List<String>? get ingredients;
  List<String>? get instructions;
  int? get prepTimeMinutes;
  int? get cookTimeMinutes;
  int? get servings;
  String? get difficulty;
  String? get cuisine;
  int? get caloriesPerServing;
  List<String>? get tags;
  int? get userId;
  double? get rating;
  int? get reviewCount;
  List<String>? get mealTypes;
  DateTime? get deletedOn;

  /// Create a copy of FoodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FoodModelCopyWith<FoodModel> get copyWith =>
      _$FoodModelCopyWithImpl<FoodModel>(this as FoodModel, _$identity);

  /// Serializes this FoodModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FoodModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            (identical(other.prepTimeMinutes, prepTimeMinutes) ||
                other.prepTimeMinutes == prepTimeMinutes) &&
            (identical(other.cookTimeMinutes, cookTimeMinutes) ||
                other.cookTimeMinutes == cookTimeMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.caloriesPerServing, caloriesPerServing) ||
                other.caloriesPerServing == caloriesPerServing) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality().equals(other.mealTypes, mealTypes) &&
            (identical(other.deletedOn, deletedOn) ||
                other.deletedOn == deletedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      name,
      image,
      isDeleted,
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(instructions),
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      difficulty,
      cuisine,
      caloriesPerServing,
      const DeepCollectionEquality().hash(tags),
      userId,
      rating,
      reviewCount,
      const DeepCollectionEquality().hash(mealTypes),
      deletedOn);

  @override
  String toString() {
    return 'FoodModel(id: $id, name: $name, image: $image, isDeleted: $isDeleted, ingredients: $ingredients, instructions: $instructions, prepTimeMinutes: $prepTimeMinutes, cookTimeMinutes: $cookTimeMinutes, servings: $servings, difficulty: $difficulty, cuisine: $cuisine, caloriesPerServing: $caloriesPerServing, tags: $tags, userId: $userId, rating: $rating, reviewCount: $reviewCount, mealTypes: $mealTypes, deletedOn: $deletedOn)';
  }
}

/// @nodoc
abstract mixin class $FoodModelCopyWith<$Res> {
  factory $FoodModelCopyWith(FoodModel value, $Res Function(FoodModel) _then) =
      _$FoodModelCopyWithImpl;
  @useResult
  $Res call(
      {dynamic id,
      String name,
      String image,
      bool isDeleted,
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
      DateTime? deletedOn});
}

/// @nodoc
class _$FoodModelCopyWithImpl<$Res> implements $FoodModelCopyWith<$Res> {
  _$FoodModelCopyWithImpl(this._self, this._then);

  final FoodModel _self;
  final $Res Function(FoodModel) _then;

  /// Create a copy of FoodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? image = null,
    Object? isDeleted = null,
    Object? ingredients = freezed,
    Object? instructions = freezed,
    Object? prepTimeMinutes = freezed,
    Object? cookTimeMinutes = freezed,
    Object? servings = freezed,
    Object? difficulty = freezed,
    Object? cuisine = freezed,
    Object? caloriesPerServing = freezed,
    Object? tags = freezed,
    Object? userId = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? mealTypes = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredients: freezed == ingredients
          ? _self.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      instructions: freezed == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prepTimeMinutes: freezed == prepTimeMinutes
          ? _self.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookTimeMinutes: freezed == cookTimeMinutes
          ? _self.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: freezed == servings
          ? _self.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      difficulty: freezed == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisine: freezed == cuisine
          ? _self.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesPerServing: freezed == caloriesPerServing
          ? _self.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mealTypes: freezed == mealTypes
          ? _self.mealTypes
          : mealTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deletedOn: freezed == deletedOn
          ? _self.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FoodModel implements FoodModel {
  const _FoodModel(
      {required this.id,
      required this.name,
      required this.image,
      this.isDeleted = false,
      final List<String>? ingredients,
      final List<String>? instructions,
      this.prepTimeMinutes,
      this.cookTimeMinutes,
      this.servings,
      this.difficulty,
      this.cuisine,
      this.caloriesPerServing,
      final List<String>? tags,
      this.userId,
      this.rating,
      this.reviewCount,
      final List<String>? mealTypes,
      this.deletedOn})
      : _ingredients = ingredients,
        _instructions = instructions,
        _tags = tags,
        _mealTypes = mealTypes;
  factory _FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);

  @override
  final dynamic id;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey()
  final bool isDeleted;
  final List<String>? _ingredients;
  @override
  List<String>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _instructions;
  @override
  List<String>? get instructions {
    final value = _instructions;
    if (value == null) return null;
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? prepTimeMinutes;
  @override
  final int? cookTimeMinutes;
  @override
  final int? servings;
  @override
  final String? difficulty;
  @override
  final String? cuisine;
  @override
  final int? caloriesPerServing;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? userId;
  @override
  final double? rating;
  @override
  final int? reviewCount;
  final List<String>? _mealTypes;
  @override
  List<String>? get mealTypes {
    final value = _mealTypes;
    if (value == null) return null;
    if (_mealTypes is EqualUnmodifiableListView) return _mealTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? deletedOn;

  /// Create a copy of FoodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FoodModelCopyWith<_FoodModel> get copyWith =>
      __$FoodModelCopyWithImpl<_FoodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FoodModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FoodModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.prepTimeMinutes, prepTimeMinutes) ||
                other.prepTimeMinutes == prepTimeMinutes) &&
            (identical(other.cookTimeMinutes, cookTimeMinutes) ||
                other.cookTimeMinutes == cookTimeMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.caloriesPerServing, caloriesPerServing) ||
                other.caloriesPerServing == caloriesPerServing) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality()
                .equals(other._mealTypes, _mealTypes) &&
            (identical(other.deletedOn, deletedOn) ||
                other.deletedOn == deletedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      name,
      image,
      isDeleted,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_instructions),
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      difficulty,
      cuisine,
      caloriesPerServing,
      const DeepCollectionEquality().hash(_tags),
      userId,
      rating,
      reviewCount,
      const DeepCollectionEquality().hash(_mealTypes),
      deletedOn);

  @override
  String toString() {
    return 'FoodModel(id: $id, name: $name, image: $image, isDeleted: $isDeleted, ingredients: $ingredients, instructions: $instructions, prepTimeMinutes: $prepTimeMinutes, cookTimeMinutes: $cookTimeMinutes, servings: $servings, difficulty: $difficulty, cuisine: $cuisine, caloriesPerServing: $caloriesPerServing, tags: $tags, userId: $userId, rating: $rating, reviewCount: $reviewCount, mealTypes: $mealTypes, deletedOn: $deletedOn)';
  }
}

/// @nodoc
abstract mixin class _$FoodModelCopyWith<$Res>
    implements $FoodModelCopyWith<$Res> {
  factory _$FoodModelCopyWith(
          _FoodModel value, $Res Function(_FoodModel) _then) =
      __$FoodModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String name,
      String image,
      bool isDeleted,
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
      DateTime? deletedOn});
}

/// @nodoc
class __$FoodModelCopyWithImpl<$Res> implements _$FoodModelCopyWith<$Res> {
  __$FoodModelCopyWithImpl(this._self, this._then);

  final _FoodModel _self;
  final $Res Function(_FoodModel) _then;

  /// Create a copy of FoodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? image = null,
    Object? isDeleted = null,
    Object? ingredients = freezed,
    Object? instructions = freezed,
    Object? prepTimeMinutes = freezed,
    Object? cookTimeMinutes = freezed,
    Object? servings = freezed,
    Object? difficulty = freezed,
    Object? cuisine = freezed,
    Object? caloriesPerServing = freezed,
    Object? tags = freezed,
    Object? userId = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? mealTypes = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_FoodModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredients: freezed == ingredients
          ? _self._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      instructions: freezed == instructions
          ? _self._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prepTimeMinutes: freezed == prepTimeMinutes
          ? _self.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookTimeMinutes: freezed == cookTimeMinutes
          ? _self.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: freezed == servings
          ? _self.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      difficulty: freezed == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisine: freezed == cuisine
          ? _self.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesPerServing: freezed == caloriesPerServing
          ? _self.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mealTypes: freezed == mealTypes
          ? _self._mealTypes
          : mealTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deletedOn: freezed == deletedOn
          ? _self.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
