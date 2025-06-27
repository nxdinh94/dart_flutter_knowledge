

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';


@singleton
class LocalFoodBloc extends Bloc<LocalFoodEvent, LocalFoodState>{
  LocalFoodBloc():super(const LocalFoodLoading()){

  }



}

