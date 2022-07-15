import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:scouting_app/system/fetch/feedback_gallery.dart';

class GalleryController {
  Future<List<FeedbackGallery>> getFeedbackList() async {
    return await http
        .get(Uri.parse(
            "https://script.google.com/macros/s/AKfycbyy9V5No23xLw8XJsobZy616ZgSLoCHdwZihDVB/exec"))
        .then((response) {
      var jsonFeedback = convert.jsonDecode(response.body) as List;
      return jsonFeedback.map((json) => FeedbackGallery.fromJson(json)).toList();
    });
  }

}
