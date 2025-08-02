

class Leadermodel {

  final int id;
  final  String name;
  final int score;

  Leadermodel({required this.id,required this.name,required this.score});


  factory Leadermodel.fromJson(Map<String, dynamic> json) {
    return Leadermodel(
      id: json['id'] ?? 0,
      name: json['name'] ?? "no name",
      score: json['score'] ?? 0,
    );
  }
    Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'score': score,
    };
  }


}