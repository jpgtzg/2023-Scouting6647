class RobotList {
  String? number;
  String? name;
  String? image;

  RobotList({required this.number, required this.name, required this.image});

  @override
  String toString() =>
      'Pit{number: $number, name: $name, image: $image}';

  factory RobotList.fromGsheets(dynamic json) {
    return RobotList(
      number : json["Number"],
      name : json['Name'],
      image :  json['Image'],
    );
  }

  Map<String, dynamic> toGsheets() {
    return {
      'Number': number,
      'Name': name,
      'Image': image,
    };
  }
}
