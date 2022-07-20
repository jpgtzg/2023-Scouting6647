import 'package:http/http.dart' as http;
import 'package:scouting_app/system/pit/feedback_pit.dart';


class PitController {
  final void Function(String) callback;

  static const String URL =
      "https://script.google.com/macros/s/AKfycbxUZpcVNzOgQvZkdnFwFn3cs8e4sRpxKfkJJsV0UNcBA7zP_iY/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  PitController(this.callback);

  void submitForm(FeedbackPit feedbackForm) async {
    try {
      final response = await http.get(Uri.parse(URL + feedbackForm.toParams()));
      await callback;
    } catch (e) {
      print(e);
    }
  }
}
