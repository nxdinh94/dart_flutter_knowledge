import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/menu_food/data/food_data.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';

@singleton
class LocalFoodBloc extends HydratedBloc<LocalFoodEvent, LocalFoodState> {
  LocalFoodBloc() : super(const LocalFoodLoadSuccess([])) {
    on<SaveFavoriteFoodEvent>((event, emit) {
      final current = _currentFavorites;

      if (!current.any((v) => v.id == event.foodEntity.id)) {
        emit(LocalFoodState.loadSuccess([...current, event.foodEntity]));
      }
    });

    // on<>((event, emit) {
    //   final current = _currentFavorites;
    //   emit(LocalFoodState.loadSuccess(
    //     current.where((e) => e.id != event.foodEntity.id).toList(),
    //   ));
    // });

    on<GetFavoriteFoodEvent>((event, emit) {
      // Optional: trigger lại state hiện tại, useful nếu cần load lại thủ công
      final current = _currentFavorites;
      emit(LocalFoodState.loadSuccess(current));
    });
  }

  List<FoodEntity> get _currentFavorites {
    if (state is LocalFoodLoadSuccess) {
      return (state as LocalFoodLoadSuccess).localFoods;
    }
    return [];
  }

  @override
  LocalFoodState? fromJson(Map<String, dynamic> json) {
    try {
      final data = json['favorites'] as List<dynamic>? ?? [];
      final items = data
          .map((e) => FoodModel.fromJson(e as Map<String, dynamic>).toEntity())
          .toList();

      return LocalFoodState.loadSuccess(items);
    } catch (_) {
      return const LocalFoodLoadSuccess([]);
    }
  }

  @override
  Map<String, dynamic>? toJson(LocalFoodState state) {
    if (state is LocalFoodLoadSuccess) {
      return {
        'favorites': state.localFoods.map((e) => e.toModel().toJson()).toList(),
      };
    }
    return {'favorites': []};
  }
}
