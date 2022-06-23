import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:scouting_app/models/feedback_form.dart';

class FormController {
  final void Function(String) callback;

  static const String URL =
      "https://script.google.com/macros/s/AKfycbxUZpcVNzOgQvZkdnFwFn3cs8e4sRpxKfkJJsV0UNcBA7zP_iY/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  FormController(this.callback);

  void submitForm(FeedbackForm feedbackForm) async {
    try {
      final response = await http.get(Uri.parse(URL + feedbackForm.toParams()));
      await callback;
    } catch (e) {
      print(e);
    }
  }
}
