import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rick_morty_seris_app/data/models/charcaters.dart';
import 'package:rick_morty_seris_app/data/repository/characherts_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharachertsRepository charachertsRepository;
  late List<Charcater> characters;

  CharactersCubit(this.charachertsRepository) : super(CharactersInitial());

  List<Charcater> getAllCharacters() {
    charachertsRepository.getallCharacters().then((characters) => {
          this.characters = characters,
          emit(CharactersLoaded(characters)),
        });
    return characters;
  }
}
