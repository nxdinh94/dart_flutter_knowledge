// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_food_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuFoodEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuFoodEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuFoodEvent()';
  }
}

/// @nodoc
class $MenuFoodEventCopyWith<$Res> {
  $MenuFoodEventCopyWith(MenuFoodEvent _, $Res Function(MenuFoodEvent) __);
}

/// @nodoc

class MenuFoodLoadEvent implements MenuFoodEvent {
  const MenuFoodLoadEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuFoodLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuFoodEvent.load()';
  }
}

/// @nodoc

class MenuFoodGetAllEvent implements MenuFoodEvent {
  const MenuFoodGetAllEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuFoodGetAllEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuFoodEvent.getAll()';
  }
}

/// @nodoc

class MenuFoodDeleteEvent implements MenuFoodEvent {
  const MenuFoodDeleteEvent(this.foodId);

  final String foodId;

  /// Create a copy of MenuFoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuFoodDeleteEventCopyWith<MenuFoodDeleteEvent> get copyWith =>
      _$MenuFoodDeleteEventCopyWithImpl<MenuFoodDeleteEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuFoodDeleteEvent &&
            (identical(other.foodId, foodId) || other.foodId == foodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodId);

  @override
  String toString() {
    return 'MenuFoodEvent.delete(foodId: $foodId)';
  }
}

/// @nodoc
abstract mixin class $MenuFoodDeleteEventCopyWith<$Res>
    implements $MenuFoodEventCopyWith<$Res> {
  factory $MenuFoodDeleteEventCopyWith(
          MenuFoodDeleteEvent value, $Res Function(MenuFoodDeleteEvent) _then) =
      _$MenuFoodDeleteEventCopyWithImpl;
  @useResult
  $Res call({String foodId});
}

/// @nodoc
class _$MenuFoodDeleteEventCopyWithImpl<$Res>
    implements $MenuFoodDeleteEventCopyWith<$Res> {
  _$MenuFoodDeleteEventCopyWithImpl(this._self, this._then);

  final MenuFoodDeleteEvent _self;
  final $Res Function(MenuFoodDeleteEvent) _then;

  /// Create a copy of MenuFoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? foodId = null,
  }) {
    return _then(MenuFoodDeleteEvent(
      null == foodId
          ? _self.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SaveToFavorite implements MenuFoodEvent {
  const SaveToFavorite(this.foodEntity);

  final FoodEntity foodEntity;

  /// Create a copy of MenuFoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveToFavoriteCopyWith<SaveToFavorite> get copyWith =>
      _$SaveToFavoriteCopyWithImpl<SaveToFavorite>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveToFavorite &&
            (identical(other.foodEntity, foodEntity) ||
                other.foodEntity == foodEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodEntity);

  @override
  String toString() {
    return 'MenuFoodEvent.saveToFavorite(foodEntity: $foodEntity)';
  }
}

/// @nodoc
abstract mixin class $SaveToFavoriteCopyWith<$Res>
    implements $MenuFoodEventCopyWith<$Res> {
  factory $SaveToFavoriteCopyWith(
          SaveToFavorite value, $Res Function(SaveToFavorite) _then) =
      _$SaveToFavoriteCopyWithImpl;
  @useResult
  $Res call({FoodEntity foodEntity});
}

/// @nodoc
class _$SaveToFavoriteCopyWithImpl<$Res>
    implements $SaveToFavoriteCopyWith<$Res> {
  _$SaveToFavoriteCopyWithImpl(this._self, this._then);

  final SaveToFavorite _self;
  final $Res Function(SaveToFavorite) _then;

  /// Create a copy of MenuFoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? foodEntity = null,
  }) {
    return _then(SaveToFavorite(
      null == foodEntity
          ? _self.foodEntity
          : foodEntity // ignore: cast_nullable_to_non_nullable
              as FoodEntity,
    ));
  }
}

// dart format on
