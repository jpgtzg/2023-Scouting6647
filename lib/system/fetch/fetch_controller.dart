import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:scouting_app/system/fetch/fetch_form.dart';

class FetchRobotController {
  Future<List<FetchForm>> getFeedbackList() async {
    return await http
        .get(Uri.parse(
            "https://script.google.com/macros/s/AKfycbyy9V5No23xLw8XJsobZy616ZgSLoCHdwZihDVB/exec"))
        .then((response) {
      var jsonFeedback = convert.jsonDecode(response.body) as List;
      return jsonFeedback.map((json) => FetchForm.fromJson(json)).toList();
    });
  }

  void submitForm(
      FetchForm feedbackForm, void Function(String) callback) async {
    try {
      await http
          .post(
              Uri.parse(
                  "https://script.google.com/macros/s/AKfycbyy9V5No23xLw8XJsobZy616ZgSLoCHdwZihDVB/exec"),
              body: feedbackForm.toJson())
          .then((response) async {
        if (response.statusCode == 302) {
          var url = response.headers['location'];
          await http
              .get(Uri.parse(
                  "https://script.google.com/macros/s/AKfycbyy9V5No23xLw8XJsobZy616ZgSLoCHdwZihDVB/exec"))
              .then((response) {
            callback(convert.jsonDecode(response.body)['status']);
          });
        } else {
          callback(convert.jsonDecode(response.body)['status']);
        }
      });
    } catch (e) {
      print(e);
    }
  }
}
