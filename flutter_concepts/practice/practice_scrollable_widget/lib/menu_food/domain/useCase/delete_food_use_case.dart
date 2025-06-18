
import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/core/core.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

@injectable
class DeleteFoodUseCase extends UseCase<DataState<FoodEntity>, String>{
  DeleteFoodUseCase(this.foodRepository);
  final FoodRepository foodRepository;
  @override
  Future<DataState<FoodEntity>> call({required String params}) {
   return foodRepository.deleteFood(params);
  }
}
