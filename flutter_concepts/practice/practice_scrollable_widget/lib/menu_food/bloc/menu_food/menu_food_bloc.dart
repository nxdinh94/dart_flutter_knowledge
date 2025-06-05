

import 'package:bloc/bloc.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/menu_food/menu_food_event.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/menu_food/menu_food_state.dart';
import 'package:practice_scrollable_widget/menu_food/data/repo.dart';

class MenuFoodBloc extends Bloc<MenuFoodEvent, MenuFoodState> {
  MenuFoodBloc() : super(const MenuFoodLoading()) {
    on<MenuFoodGetAllEvent>(_onMenuFoodGetAllEvent);
  }

  final _repo = Repo();

  Future<void> _onMenuFoodGetAllEvent(
      MenuFoodEvent event,
      Emitter<MenuFoodState> emit,
      ) async {

    try {
      final result = await _repo.getAllMenuFoods();
      emit(MenuFoodLoadSuccess(result));
    } catch (e) {
      emit(MenuFoodLoadFailure(e.toString()));
    }
  }
}

