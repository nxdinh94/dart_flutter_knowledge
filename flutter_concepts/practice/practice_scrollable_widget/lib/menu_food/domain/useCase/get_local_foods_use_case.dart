

import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/core/core.dart';
import 'package:practice_scrollable_widget/menu_food/data/food_data.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

@injectable
class GetLocalFoodUseCase extends UseCase<List<FoodEntity>, void>{

  GetLocalFoodUseCase({required this.foodRepositoryImp});
  FoodRepositoryImp foodRepositoryImp;

  @override
  Future<List<FoodEntity>> call({required void params}) {
    // return foodRepositoryImp.getLocalFoods();
    throw Exception('fdf');
  }


}
