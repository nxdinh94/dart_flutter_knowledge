import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_scrollable_widget/app/app.dart';
import 'package:practice_scrollable_widget/bootstrap.dart';
import 'package:practice_scrollable_widget/menu_food/bloc/switch_layout/switch_layout_bloc.dart';
import 'package:practice_scrollable_widget/menu_food/menu_food.dart';

void main() {
  bootstrap((){
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MenuFoodBloc()..add(const MenuFoodGetAllEvent()),
        ),
        BlocProvider(
          create: (context) => SwitchLayoutBloc(),
        ),
      ],
      child: const App(),
    );
  });
}
