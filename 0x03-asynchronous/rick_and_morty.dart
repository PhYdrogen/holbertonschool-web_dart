import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = 'https://rickandmortyapi.com/api/character';
  
  try {
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> characters = data['results'];
      
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw Exception('Failed to load characters: HTTP status ${response.statusCode}');
    }
  } catch (e) {
    print('error caught: $e');
  }
}