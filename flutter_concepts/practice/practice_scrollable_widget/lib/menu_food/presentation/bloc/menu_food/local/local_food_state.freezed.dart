// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalFoodState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocalFoodState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LocalFoodState()';
  }
}

/// @nodoc
class $LocalFoodStateCopyWith<$Res> {
  $LocalFoodStateCopyWith(LocalFoodState _, $Res Function(LocalFoodState) __);
}

/// @nodoc

class LocalFoodLoading implements LocalFoodState {
  const LocalFoodLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocalFoodLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LocalFoodState.loading()';
  }
}

/// @nodoc

class LocalFoodInitial implements LocalFoodState {
  const LocalFoodInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocalFoodInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LocalFoodState.initial()';
  }
}

/// @nodoc

class LocalFoodLoadSuccess implements LocalFoodState {
  const LocalFoodLoadSuccess(final List<FoodEntity> localFoods)
      : _localFoods = localFoods;

  final List<FoodEntity> _localFoods;
  List<FoodEntity> get localFoods {
    if (_localFoods is EqualUnmodifiableListView) return _localFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localFoods);
  }

  /// Create a copy of LocalFoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalFoodLoadSuccessCopyWith<LocalFoodLoadSuccess> get copyWith =>
      _$LocalFoodLoadSuccessCopyWithImpl<LocalFoodLoadSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalFoodLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._localFoods, _localFoods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_localFoods));

  @override
  String toString() {
    return 'LocalFoodState.loadSuccess(localFoods: $localFoods)';
  }
}

/// @nodoc
abstract mixin class $LocalFoodLoadSuccessCopyWith<$Res>
    implements $LocalFoodStateCopyWith<$Res> {
  factory $LocalFoodLoadSuccessCopyWith(LocalFoodLoadSuccess value,
          $Res Function(LocalFoodLoadSuccess) _then) =
      _$LocalFoodLoadSuccessCopyWithImpl;
  @useResult
  $Res call({List<FoodEntity> localFoods});
}

/// @nodoc
class _$LocalFoodLoadSuccessCopyWithImpl<$Res>
    implements $LocalFoodLoadSuccessCopyWith<$Res> {
  _$LocalFoodLoadSuccessCopyWithImpl(this._self, this._then);

  final LocalFoodLoadSuccess _self;
  final $Res Function(LocalFoodLoadSuccess) _then;

  /// Create a copy of LocalFoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? localFoods = null,
  }) {
    return _then(LocalFoodLoadSuccess(
      null == localFoods
          ? _self._localFoods
          : localFoods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
    ));
  }
}

/// @nodoc

class LocalFoodDeleteSuccess implements LocalFoodState {
  const LocalFoodDeleteSuccess(final List<FoodEntity> localFoods)
      : _localFoods = localFoods;

  final List<FoodEntity> _localFoods;
  List<FoodEntity> get localFoods {
    if (_localFoods is EqualUnmodifiableListView) return _localFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localFoods);
  }

  /// Create a copy of LocalFoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalFoodDeleteSuccessCopyWith<LocalFoodDeleteSuccess> get copyWith =>
      _$LocalFoodDeleteSuccessCopyWithImpl<LocalFoodDeleteSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalFoodDeleteSuccess &&
            const DeepCollectionEquality()
                .equals(other._localFoods, _localFoods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_localFoods));

  @override
  String toString() {
    return 'LocalFoodState.deleteSuccess(localFoods: $localFoods)';
  }
}

/// @nodoc
abstract mixin class $LocalFoodDeleteSuccessCopyWith<$Res>
    implements $LocalFoodStateCopyWith<$Res> {
  factory $LocalFoodDeleteSuccessCopyWith(LocalFoodDeleteSuccess value,
          $Res Function(LocalFoodDeleteSuccess) _then) =
      _$LocalFoodDeleteSuccessCopyWithImpl;
  @useResult
  $Res call({List<FoodEntity> localFoods});
}

/// @nodoc
class _$LocalFoodDeleteSuccessCopyWithImpl<$Res>
    implements $LocalFoodDeleteSuccessCopyWith<$Res> {
  _$LocalFoodDeleteSuccessCopyWithImpl(this._self, this._then);

  final LocalFoodDeleteSuccess _self;
  final $Res Function(LocalFoodDeleteSuccess) _then;

  /// Create a copy of LocalFoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? localFoods = null,
  }) {
    return _then(LocalFoodDeleteSuccess(
      null == localFoods
          ? _self._localFoods
          : localFoods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
    ));
  }
}

/// @nodoc

class LocalFoodLoadFailure implements LocalFoodState {
  const LocalFoodLoadFailure(this.error);

  final DioException error;

  /// Create a copy of LocalFoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalFoodLoadFailureCopyWith<LocalFoodLoadFailure> get copyWith =>
      _$LocalFoodLoadFailureCopyWithImpl<LocalFoodLoadFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalFoodLoadFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'LocalFoodState.loadFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $LocalFoodLoadFailureCopyWith<$Res>
    implements $LocalFoodStateCopyWith<$Res> {
  factory $LocalFoodLoadFailureCopyWith(LocalFoodLoadFailure value,
          $Res Function(LocalFoodLoadFailure) _then) =
      _$LocalFoodLoadFailureCopyWithImpl;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class _$LocalFoodLoadFailureCopyWithImpl<$Res>
    implements $LocalFoodLoadFailureCopyWith<$Res> {
  _$LocalFoodLoadFailureCopyWithImpl(this._self, this._then);

  final LocalFoodLoadFailure _self;
  final $Res Function(LocalFoodLoadFailure) _then;

  /// Create a copy of LocalFoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(LocalFoodLoadFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

// dart format on
