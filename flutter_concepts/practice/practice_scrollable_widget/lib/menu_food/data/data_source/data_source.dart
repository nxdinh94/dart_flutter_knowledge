import 'dart:convert';
import 'package:http/http.dart' as http;

class DataSource {
  Future<List<dynamic>> getAllFood() async {
    final url = Uri.https('dummyjson.com', '/recipes');

    final response = await http.get(url);
    final result = returnResponse(response) as Map<String, dynamic>;
    return result['recipes'] as List<dynamic>;
  }
  Future<dynamic> deleteFood(String id) async {
    final url = Uri.https('dummyjson.com', '/recipes/$id');

    final response = await http.delete(url);
    final result = returnResponse(response);
    return result;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        throw Exception('Bad request');
      case 401:
      case 403:
        throw Exception('Unauthorized');
      case 404:
        throw Exception('Not found');
      case 500:
      default:
        throw Exception('Server error');
    }

  }

}
