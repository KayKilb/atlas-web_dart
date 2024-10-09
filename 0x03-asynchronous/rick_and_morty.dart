import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    // Fetch data from the Rick and Morty API
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Decode the response body to extract character information
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic>? characters = data['results'];

      // Check if characters list is not null
      if (characters != null) {
        for (var character in characters) {
          print(character['name']);
        }
      } else {
        print('No characters found in the response.');
      }
    } else {
      throw Exception(
          'Failed to load characters: Status Code ${response.statusCode}');
    }
  } catch (e) {
    // Print the caught error
    print('Error caught: $e');
  }
}
