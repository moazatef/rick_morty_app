import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/character_model.dart';

class ApiService {
  final String baseUrl = 'https://rickandmortyapi.com/api/character';

  Future<List<CharacterModel>> fetchCharacters() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> results = data['results'];
      final characters = results
          .map((characterJson) =>
              CharacterModel.fromJson(characterJson as Map<String, dynamic>))
          .toList();
      return characters;
    } else {
      throw Exception('Failed to load characters');
    }
  }
}
