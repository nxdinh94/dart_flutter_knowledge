

import 'package:bloc/bloc.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/menu_food/menu_food_event.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/menu_food/menu_food_state.dart';
import 'package:practice_scrollable_widget/menu_food/data/repo.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_model.dart';

class MenuFoodBloc extends Bloc<MenuFoodEvent, MenuFoodState> {
  MenuFoodBloc() : super(const MenuFoodLoading()) {
    on<MenuFoodGetAllEvent>(_onMenuFoodGetAllEvent);
    on<MenuFoodDeleteEvent>(_onMenuFoodDeleteEvent);
  }

  final _repo = Repo();

  Future<void> _onMenuFoodGetAllEvent(
    MenuFoodGetAllEvent event,
    Emitter<MenuFoodState> emit,
  ) async {

    try {
      final result = await _repo.getAllMenuFoods();
      emit(MenuFoodLoadSuccess(result));
    }
    catch (e) {
      emit(MenuFoodLoadFailure(e.toString()));
    }
  }
  Future<void> _onMenuFoodDeleteEvent(
    MenuFoodDeleteEvent event,
    Emitter<MenuFoodState> emit,
  ) async {
    try {
      final result = await _repo.deleteFood(event.foodId);
      final foundIndex = state.menuFoods!.indexWhere((food) => food.id == result.id);
      final newState = <FoodModel>[];
      state.menuFoods!.asMap().forEach((index, value){
        if (index == foundIndex) {
          newState.add(result);
        }else {
          newState.add(value);
        }
      });

      emit(MenuFoodDeleteSuccess(newState));
    }
    catch (e) {
      emit(MenuFoodLoadFailure(e.toString()));
    }
  }
}

