// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../API/character_api.dart';
import '../models/charcaters.dart';

class CharachertsRepository {
  final CharacterApi characterApi;
  CharachertsRepository({
    required this.characterApi,
  });

  Future<List<Charcater>> getallCharacters() async {
    final characters = await characterApi
        .getallCharacters(); // this parameter character is sore all char
    return characters
        .map((charcater) => Charcater.fromJson(charcater))
        .toList();
  }
}
