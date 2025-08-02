class Messagemodel {
  final int id;

  final String message;

  Messagemodel({required this.id, required this.message});

  factory Messagemodel.fromJson(Map<String, dynamic> json) {
    return Messagemodel(id: json['id'] ?? 0, message: json['message']?? "hello");
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'message': message};
  }
}
