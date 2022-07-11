class FetchForm {
  String number;
  String name;

  FetchForm(this.number, this.name);

  factory FetchForm.fromJson(dynamic json) {
    return FetchForm(
      "${json['number']}",
      "${json['name']}",
    );
  }

  Map toJson() => {
        'name': number,
        'email': name,
      };
}
