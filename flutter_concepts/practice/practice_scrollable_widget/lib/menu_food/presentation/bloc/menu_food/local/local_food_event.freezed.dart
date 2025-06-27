// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_food_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalFoodEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocalFoodEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LocalFoodEvent()';
  }
}

/// @nodoc
class $LocalFoodEventCopyWith<$Res> {
  $LocalFoodEventCopyWith(LocalFoodEvent _, $Res Function(LocalFoodEvent) __);
}

/// @nodoc

class SaveFavoriteFoodEvent implements LocalFoodEvent {
  const SaveFavoriteFoodEvent(this.foodEntity);

  final FoodEntity foodEntity;

  /// Create a copy of LocalFoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveFavoriteFoodEventCopyWith<SaveFavoriteFoodEvent> get copyWith =>
      _$SaveFavoriteFoodEventCopyWithImpl<SaveFavoriteFoodEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveFavoriteFoodEvent &&
            (identical(other.foodEntity, foodEntity) ||
                other.foodEntity == foodEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodEntity);

  @override
  String toString() {
    return 'LocalFoodEvent.saveFavoriteFood(foodEntity: $foodEntity)';
  }
}

/// @nodoc
abstract mixin class $SaveFavoriteFoodEventCopyWith<$Res>
    implements $LocalFoodEventCopyWith<$Res> {
  factory $SaveFavoriteFoodEventCopyWith(SaveFavoriteFoodEvent value,
          $Res Function(SaveFavoriteFoodEvent) _then) =
      _$SaveFavoriteFoodEventCopyWithImpl;
  @useResult
  $Res call({FoodEntity foodEntity});
}

/// @nodoc
class _$SaveFavoriteFoodEventCopyWithImpl<$Res>
    implements $SaveFavoriteFoodEventCopyWith<$Res> {
  _$SaveFavoriteFoodEventCopyWithImpl(this._self, this._then);

  final SaveFavoriteFoodEvent _self;
  final $Res Function(SaveFavoriteFoodEvent) _then;

  /// Create a copy of LocalFoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? foodEntity = null,
  }) {
    return _then(SaveFavoriteFoodEvent(
      null == foodEntity
          ? _self.foodEntity
          : foodEntity // ignore: cast_nullable_to_non_nullable
              as FoodEntity,
    ));
  }
}

/// @nodoc

class GetFavoriteFoodEvent implements LocalFoodEvent {
  const GetFavoriteFoodEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetFavoriteFoodEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LocalFoodEvent.getFavoriteFood()';
  }
}

// dart format on
