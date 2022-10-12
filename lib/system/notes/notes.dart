class Notes {
  String? number;
  String? name;
  String? notes;

  Notes({required this.number, required this.name, required this.notes});

  @override
  String toString() => 'Notes{number : $number, name: $name, notes: $notes}';

  factory Notes.fromGsheets(dynamic json) {
    return Notes(
      number: json["Number"],
      name: json["Name"],
      notes: json["Notes"],
    );
  }

  Map<String, dynamic> toGsheets() {
    return {
      'Number': number,
      'Name': name,
      'Notes': notes,
    };
  }

  Map<String, dynamic> toList() {
    return {
      'Number': number,
      'Name': name,
      'Image':
          "https://4.bp.blogspot.com/-3uyUTVhvMuo/WjAGEF31DhI/AAAAAAAAAEU/6EurwWD_ebc8o5bFfWoclQuhjSm1Aj5sQCK4BGAYYCw/s1600/FRC_Logo.svgS.jpg",
    };
  }
}
