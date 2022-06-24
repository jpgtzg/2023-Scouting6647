import 'package:flutter/material.dart';
import 'package:scouting_app/models/numberform.dart';
import 'package:scouting_app/models/textform.dart';
import 'package:scouting_app/system/controller.dart';
import 'package:scouting_app/system/feedback_form.dart';

import '../widgets/topbar.dart';

class AddPagePit extends StatefulWidget {
  const AddPagePit({Key? key}) : super(key: key);

  @override
  State<AddPagePit> createState() => _AddPagePitState();
}

class _AddPagePitState extends State<AddPagePit> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //TextField Controllers
  TextEditingController nameteamController = TextEditingController();
  TextEditingController numteamController = TextEditingController();
  TextEditingController chasisController = TextEditingController();
  TextEditingController wheelController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      FeedbackForm feedbackForm = FeedbackForm(
        nameteamController.text,
        numteamController.text,
        chasisController.text,
        wheelController.text,
      );

      FormController formController = FormController((String response) {
        print(response);
        if (response == FormController.STATUS_SUCCESS) {
          _showSnackBar("Data has been sent");
        } else {
          _showSnackBar("An error has ocurred, try again later");
        }
      });

      _showSnackBar("Sending information");
      formController.submitForm(feedbackForm);
    }
  }

  _showSnackBar(String message) {
    final snackbar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Data sent")));

    //_scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 10.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Image(
                      height: 30,
                      width: 30,
                      image: AssetImage("assets/images/back.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const TopBar(
              topPadding: 0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextForm(text: "Team name", formText: "Enter team name", padding: 0, controller: nameteamController),

                      NumberForm(text: "Team number", formText: "Enter team number", padding: 50, controller: numteamController),

                      TextForm(text: "Chassis type", formText: "Enter chassis type", padding: 50, controller: chasisController),

                      TextForm(text: "Wheel type", formText: "Enter wheel type", padding: 50, controller: wheelController),

                      SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          _submitForm();
                        },
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.indigo,
                        ),
                        child: const Text("Submit"),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
