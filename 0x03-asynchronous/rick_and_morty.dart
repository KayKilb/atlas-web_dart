import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw 'Failed to load characters';
    }
  } catch (e) {
    print('error caught: $e');
  }
}
