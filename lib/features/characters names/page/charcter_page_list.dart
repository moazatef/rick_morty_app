import 'package:flutter/material.dart';
import '../../../model/character_model.dart';
import '../../../service/api_service.dart';
import '../widget/list_tile_.widget.dart';

class CharacterListPage extends StatefulWidget {
  const CharacterListPage({super.key});

  @override
  _CharacterListPageState createState() => _CharacterListPageState();
}

class _CharacterListPageState extends State<CharacterListPage> {
  late Future<List<CharacterModel>> futureCharacters;

  @override
  void initState() {
    super.initState();
    futureCharacters = ApiService().fetchCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty Characters'),
      ),
      body: FutureBuilder<List<CharacterModel>>(
        future: futureCharacters,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No characters found.'));
          } else {
            final characters = snapshot.data!;
            return ListView.builder(
              itemCount: characters.length,
              itemBuilder: (context, index) {
                final character = characters[index];
                return CharacterSprite(character: character);
              },
            );
          }
        },
      ),
    );
  }
}
