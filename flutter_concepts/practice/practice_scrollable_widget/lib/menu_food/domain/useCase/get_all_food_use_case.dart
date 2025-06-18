import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/core/core.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

@injectable
class GetAllFoodUseCase extends UseCase<DataState<List<FoodEntity>>, void>{
  GetAllFoodUseCase(this.foodRepository);
  FoodRepository foodRepository;
  @override
  Future<DataState<List<FoodEntity>>> call({void params}) {
    return foodRepository.getAllFood();
  }
}
