import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/core/core.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';

@singleton
class MenuFoodBloc extends Bloc<MenuFoodEvent, MenuFoodState> {
  MenuFoodBloc(this.getAllFoodUseCase, this.deleteFoodUseCase)
    : super(const MenuFoodLoading()) {
    on<MenuFoodGetAllEvent>(_onMenuFoodGetAllEvent);
    on<MenuFoodDeleteEvent>(_onMenuFoodDeleteEvent);
  }

  final GetAllFoodUseCase getAllFoodUseCase;
  final DeleteFoodUseCase deleteFoodUseCase;

  Future<void> _onMenuFoodGetAllEvent(
    MenuFoodGetAllEvent event,
    Emitter<MenuFoodState> emit,
  ) async {
    final result = await getAllFoodUseCase();
    if (result is DataSuccess && result.data!.isNotEmpty) {
      emit(MenuFoodLoadSuccess(result.data!));
    }
    if (result is DataError) {
      emit(MenuFoodLoadFailure(result.exception!));
    }
  }
  Future<void> _onMenuFoodDeleteEvent(
    MenuFoodDeleteEvent event,
    Emitter<MenuFoodState> emit,
  ) async {
    final result = await deleteFoodUseCase(params: event.foodId);
    if (result is DataSuccess) {
      final data = result.data!;

      if (state is MenuFoodLoadSuccess || state is MenuFoodDeleteSuccess) {
        final currentFoods = (state as dynamic).menuFoods as List<FoodEntity>;

        final foundIndex = currentFoods.indexWhere((food) => food.id == data.id);

        final newState = [...currentFoods];
        newState[foundIndex] = data;

        emit(MenuFoodDeleteSuccess(newState));
      }
    }
    if (result is DataError) {
      emit(MenuFoodLoadFailure(result.exception!));
    }
  }
}

