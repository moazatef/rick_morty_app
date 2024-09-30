class Charcater {
  late int id;
  late String name;
  late String aliveStatus;
  late String gender;
  late String image;
  late List<dynamic> charcterborn = [];
  late List<dynamic> charcterlocation = [];
  late List<dynamic> charcterEpisodes = [];

  Charcater.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    aliveStatus = json['status'];
    gender = json['gender'];
    image = json['status'];
    charcterborn = json['origin']['name'];
    charcterlocation = json['location']['name'];
    charcterEpisodes = json['episode'];
  }
}
