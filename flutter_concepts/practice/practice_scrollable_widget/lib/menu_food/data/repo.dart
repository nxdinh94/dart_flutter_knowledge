import 'package:practice_scrollable_widget/menu_food/data/data_source.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_model.dart';

class Repo {
  final DataSource _dataSource = DataSource();

  Future<List<FoodModel>> getAllMenuFoods() async {
    try {
      final rawData = await _dataSource.getAllFood();

      final transformed = rawData
          .whereType<Map<String, dynamic>>()
          .map((e) {
        final fm = FoodModel.fromJson(e);
        return fm;
      })
          .toList();

      print('Fetched ${transformed.length} food items');
      return transformed;
    } catch (e) {
      print('Repo Error: $e');
      rethrow;
    }
  }
}
