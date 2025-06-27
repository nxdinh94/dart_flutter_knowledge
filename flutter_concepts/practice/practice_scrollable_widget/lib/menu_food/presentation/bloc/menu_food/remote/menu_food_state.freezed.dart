// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuFoodState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuFoodState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuFoodState()';
  }
}

/// @nodoc
class $MenuFoodStateCopyWith<$Res> {
  $MenuFoodStateCopyWith(MenuFoodState _, $Res Function(MenuFoodState) __);
}

/// @nodoc

class MenuFoodLoading implements MenuFoodState {
  const MenuFoodLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuFoodLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuFoodState.loading()';
  }
}

/// @nodoc

class MenuFoodLoadSuccess implements MenuFoodState {
  const MenuFoodLoadSuccess(final List<FoodEntity> menuFoods)
      : _menuFoods = menuFoods;

  final List<FoodEntity> _menuFoods;
  List<FoodEntity> get menuFoods {
    if (_menuFoods is EqualUnmodifiableListView) return _menuFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuFoods);
  }

  /// Create a copy of MenuFoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuFoodLoadSuccessCopyWith<MenuFoodLoadSuccess> get copyWith =>
      _$MenuFoodLoadSuccessCopyWithImpl<MenuFoodLoadSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuFoodLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._menuFoods, _menuFoods));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menuFoods));

  @override
  String toString() {
    return 'MenuFoodState.loadSuccess(menuFoods: $menuFoods)';
  }
}

/// @nodoc
abstract mixin class $MenuFoodLoadSuccessCopyWith<$Res>
    implements $MenuFoodStateCopyWith<$Res> {
  factory $MenuFoodLoadSuccessCopyWith(
          MenuFoodLoadSuccess value, $Res Function(MenuFoodLoadSuccess) _then) =
      _$MenuFoodLoadSuccessCopyWithImpl;
  @useResult
  $Res call({List<FoodEntity> menuFoods});
}

/// @nodoc
class _$MenuFoodLoadSuccessCopyWithImpl<$Res>
    implements $MenuFoodLoadSuccessCopyWith<$Res> {
  _$MenuFoodLoadSuccessCopyWithImpl(this._self, this._then);

  final MenuFoodLoadSuccess _self;
  final $Res Function(MenuFoodLoadSuccess) _then;

  /// Create a copy of MenuFoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? menuFoods = null,
  }) {
    return _then(MenuFoodLoadSuccess(
      null == menuFoods
          ? _self._menuFoods
          : menuFoods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
    ));
  }
}

/// @nodoc

class MenuFoodDeleteSuccess implements MenuFoodState {
  const MenuFoodDeleteSuccess(final List<FoodEntity> menuFoods)
      : _menuFoods = menuFoods;

  final List<FoodEntity> _menuFoods;
  List<FoodEntity> get menuFoods {
    if (_menuFoods is EqualUnmodifiableListView) return _menuFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuFoods);
  }

  /// Create a copy of MenuFoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuFoodDeleteSuccessCopyWith<MenuFoodDeleteSuccess> get copyWith =>
      _$MenuFoodDeleteSuccessCopyWithImpl<MenuFoodDeleteSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuFoodDeleteSuccess &&
            const DeepCollectionEquality()
                .equals(other._menuFoods, _menuFoods));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menuFoods));

  @override
  String toString() {
    return 'MenuFoodState.deleteSuccess(menuFoods: $menuFoods)';
  }
}

/// @nodoc
abstract mixin class $MenuFoodDeleteSuccessCopyWith<$Res>
    implements $MenuFoodStateCopyWith<$Res> {
  factory $MenuFoodDeleteSuccessCopyWith(MenuFoodDeleteSuccess value,
          $Res Function(MenuFoodDeleteSuccess) _then) =
      _$MenuFoodDeleteSuccessCopyWithImpl;
  @useResult
  $Res call({List<FoodEntity> menuFoods});
}

/// @nodoc
class _$MenuFoodDeleteSuccessCopyWithImpl<$Res>
    implements $MenuFoodDeleteSuccessCopyWith<$Res> {
  _$MenuFoodDeleteSuccessCopyWithImpl(this._self, this._then);

  final MenuFoodDeleteSuccess _self;
  final $Res Function(MenuFoodDeleteSuccess) _then;

  /// Create a copy of MenuFoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? menuFoods = null,
  }) {
    return _then(MenuFoodDeleteSuccess(
      null == menuFoods
          ? _self._menuFoods
          : menuFoods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
    ));
  }
}

/// @nodoc

class MenuFoodLoadFailure implements MenuFoodState {
  const MenuFoodLoadFailure(this.error);

  final DioException error;

  /// Create a copy of MenuFoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuFoodLoadFailureCopyWith<MenuFoodLoadFailure> get copyWith =>
      _$MenuFoodLoadFailureCopyWithImpl<MenuFoodLoadFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuFoodLoadFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'MenuFoodState.loadFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $MenuFoodLoadFailureCopyWith<$Res>
    implements $MenuFoodStateCopyWith<$Res> {
  factory $MenuFoodLoadFailureCopyWith(
          MenuFoodLoadFailure value, $Res Function(MenuFoodLoadFailure) _then) =
      _$MenuFoodLoadFailureCopyWithImpl;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class _$MenuFoodLoadFailureCopyWithImpl<$Res>
    implements $MenuFoodLoadFailureCopyWith<$Res> {
  _$MenuFoodLoadFailureCopyWithImpl(this._self, this._then);

  final MenuFoodLoadFailure _self;
  final $Res Function(MenuFoodLoadFailure) _then;

  /// Create a copy of MenuFoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(MenuFoodLoadFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

// dart format on
