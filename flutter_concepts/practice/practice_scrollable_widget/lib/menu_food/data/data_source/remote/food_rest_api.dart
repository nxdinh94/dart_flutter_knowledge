import 'package:dio/dio.dart';
import 'package:practice_scrollable_widget/menu_food/data/food_data.dart';
import 'package:retrofit/retrofit.dart';

part 'food_rest_api.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class FoodRestApi {
  factory FoodRestApi(Dio dio, {String? baseUrl}) = _FoodRestApi;

  @GET('/recipes')
  Future<HttpResponse<dynamic>> getFoods();

  @DELETE('/recipes/{id}')
  Future<HttpResponse<FoodModel>> deleteFood(@Path() String id);
}

