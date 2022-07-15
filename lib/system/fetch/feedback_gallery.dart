class FeedbackGallery {
  String number;
  String name;
  String image;
  
  FeedbackGallery(this.number, this.name, this.image);

  factory FeedbackGallery.fromJson(dynamic json) {
    return FeedbackGallery(
      "${json['number']}",
      "${json['name']}",
      "${json['image']}"
    );
  }
}
