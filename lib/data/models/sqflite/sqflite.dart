class Name {
  final int? id;
  final String name;
  final String lastName;

  Name({
    required this.name,
    required this.lastName,
    this.id,
  });

  factory Name.fromjson(Map<String, dynamic> json) => Name(
        id: json['id'],
        name: json['name'],
        lastName: json['lastName'],
      );

  Map<String, dynamic> tojson() => {
        'id': id,
        'name': name,
        'lastName': lastName,
      };
}
