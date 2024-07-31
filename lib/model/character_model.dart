class CharacterModel {
  late final int id; //the id of the character. all of characters have unique id
  late final String name; // the name of the character
  late final String
      status; // The status of the character ('Alive', 'Dead' or 'unknown').
  late final String species; // The species of the character.
  late final String type;
  late final String image; // the image of the character

  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.image,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      image: json['image'],
    );
  }
}
