
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_scrollable_widget/core/core.dart';
import 'package:practice_scrollable_widget/menu_food/data/food_data.dart';
import 'package:practice_scrollable_widget/menu_food/domain/food_domain.dart';

@Injectable(as: FoodRepository)
class FoodRepositoryImp extends FoodRepository{
  FoodRepositoryImp(this.foodRestApi, this.localFoodDataSource);
  final FoodRestApi foodRestApi;
  final LocalFoodDataSource localFoodDataSource;

  @override
  Future<DataState<FoodEntity>> deleteFood(String id) async {
    try {
      final rawData = await foodRestApi.deleteFood(id);
      if (rawData.response.statusCode == HttpStatus.ok) {
        final foodEntity = rawData.data.toEntity();
        return DataSuccess(foodEntity);
      }
      else {
        return DataError(
          DioException(
            requestOptions: rawData.response.requestOptions,
            message: rawData.response.statusMessage,
            error: rawData.response.statusCode,
          ),
        );
      }
    }
    on DioException catch (e) {
      return DataError(
        DioException(
          response: e.response,
          requestOptions: e.requestOptions,
        ),
      );
    }
  }

  @override
  Future<DataState<List<FoodEntity>>> getAllFood() async {
    try {
      final result = await foodRestApi.getFoods();
      if (result.response.statusCode == HttpStatus.ok) {
        final rawData = result.data as Map<String, dynamic>;
        final foods = rawData['recipes'] as List<dynamic>;
        final transformed = foods
          .whereType<Map<String, dynamic>>()
          .map(FoodModel.fromJson).toList();
        final foodEntities = transformed.map((e) => e.toEntity()).toList();
        return DataSuccess<List<FoodEntity>>(foodEntities);
      }
      else {
        return DataError(
          DioException(
            requestOptions: result.response.requestOptions,
            message: result.response.statusMessage,
            error: result.response.statusCode,
          ),
        );
      }
    }
    on DioException catch (e) {
      return DataError(
        DioException(
          response: e.response,
          requestOptions: e.requestOptions,
        ),
      );
    }
  }

  // @override
  // Future<List<FoodEntity>> getLocalFoods() async {
  //   List<FoodEntity> food = [];
  //  return food;
  // }
}
