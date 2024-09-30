part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Charcater> characters;
  CharactersLoaded(this.characters);
}

class CharactersError extends CharactersState {
  final String message;
  CharactersError(this.message);
}

class CharactersLoading extends CharactersState {
  final String message;
  CharactersLoading(this.message);
}

class CharactersEmpty extends CharactersState {
  final String message;
  CharactersEmpty(this.message);
}
