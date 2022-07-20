class Pit {
  String? number;
  String? name;
  String? chassis;
  String? wheelType;

  Pit({required this.number, required this.name, required this.chassis, required this.wheelType});

  @override
  String toString() =>
      'Pit{number: $number, name: $name, chassis: $chassis, wheelType: $wheelType}';
  
  factory Pit.fromGsheets(dynamic json) {
    return Pit(
      number : json["number"],
      name : json['name'],
      chassis :  json['chassis'],
      wheelType:  json['wheelType'],
    );
  }

  Map<String, dynamic> toGsheets() {
    return {
      'number': number,
      'name': name,
      'chassis': chassis,
      'wheelType': wheelType,
    };
  }
}
