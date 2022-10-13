import 'package:flutter/material.dart';
import 'package:scouting_app/system/pit/pitcontroller.dart';
import 'package:scouting_app/system/pit/pit.dart';

import '../../widgets/forms/numberform.dart';
import '../../widgets/forms/textform.dart';
import '../../widgets/topbar/mod_topbar.dart';

class PitPage extends StatefulWidget {
  const PitPage({Key? key}) : super(key: key);

  @override
  State<PitPage> createState() => _PitPageState();
}

class _PitPageState extends State<PitPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //TextField Controllers
  TextEditingController nameteamController = TextEditingController();
  TextEditingController numteamController = TextEditingController();
  TextEditingController chasisController = TextEditingController();
  TextEditingController wheelController = TextEditingController();
  TextEditingController commentsController = TextEditingController();


  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Pit feedbackPit = Pit(
        number: numteamController.text,
        name: nameteamController.text,
        chassis: chasisController.text,
        wheelType: wheelController.text,
        comments: commentsController.text,
      );

      PitController formPit = new PitController();


      _showSnackBar("Sending information");
      formPit.insertData(feedbackPit);
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
            ModTopBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NumberForm(
                        text: "Team number",
                        formText: "Enter team number",
                        padding: 0,
                        controller: numteamController,
                      ),
                      TextForm(
                        text: "Team name",
                        formText: "Enter team name",
                        padding: 50,
                        controller: nameteamController,
                      ),
                      TextForm(
                        text: "Chassis type",
                        formText: "Enter chassis type",
                        padding: 50,
                        controller: chasisController,
                      ),
                      TextForm(
                        text: "Wheel type",
                        formText: "Enter wheel type",
                        padding: 50,
                        controller: wheelController,
                      ),
                      TextForm(
                        text: "Comments",
                        formText: "Enter short comments",
                        padding: 50,
                        controller: commentsController,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 160,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            _submitForm();
                          },
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: Colors.indigo,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text("Submit"),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
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
