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
    return Pit( //MAKE SURE THESE ARE THE SAME AS IN THE GOOGLE SHEETS
      number : json["Number"],
      name : json['Name'],
      chassis :  json['Chassis type'],
      wheelType:  json['Wheel Type'],
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
