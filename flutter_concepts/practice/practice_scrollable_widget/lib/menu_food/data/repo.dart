import 'package:practice_scrollable_widget/menu_food/data/data_source.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_model.dart';

class Repo {
  final DataSource _dataSource = DataSource();

  Future<List<FoodModel>> getAllMenuFoods() async {
    try {
      final rawData = await _dataSource.getAllFood();

      final transformed = rawData
        .whereType<Map<String, dynamic>>()
        .map(FoodModel.fromJson).toList();
      return transformed;
    }
    catch (e) {
      print('Repo Error: $e');
      rethrow;
    }
  }
  Future<FoodModel> deleteFood(String id) async {
    try {
      final rawData = await _dataSource.deleteFood(id);
      return FoodModel.fromJson(rawData as Map<String, dynamic>);
    } catch (e) {
      print('Repo Error: $e');
      rethrow;
    }
  }
}
