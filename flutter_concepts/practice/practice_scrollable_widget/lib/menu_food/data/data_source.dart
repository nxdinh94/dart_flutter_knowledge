import 'dart:convert';
import 'package:http/http.dart' as http;

class DataSource {
  Future<List<dynamic>> getAllFood() async {
    final url = Uri.https('dummyjson.com', '/recipes');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      // API trả về JSON object, trong đó có key "recipes" chứa List
      final recipes = jsonResponse['recipes'] as List<dynamic>;
      return recipes;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw Exception('Failed to load food data');
    }
  }
}
