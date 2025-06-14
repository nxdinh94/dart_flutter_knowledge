import 'package:bloc/bloc.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';

class SwitchLayoutBloc extends Bloc<SwitchLayoutEvent, bool>{
  SwitchLayoutBloc() : super(false) {
    on<SwitchLayoutToListEvent>(_onSwitchLayoutEvent);
    on<SwitchLayoutToGridEvent>(_onSwitchLayoutEvent);
  }

  void _onSwitchLayoutEvent(
      SwitchLayoutEvent event,
      Emitter<bool> emit,
      ) {
    if (event is SwitchLayoutToListEvent) {
      emit(true);
    } else if (event is SwitchLayoutToGridEvent) {
      emit(false);
    }
  }
}
