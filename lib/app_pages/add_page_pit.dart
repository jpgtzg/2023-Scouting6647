import 'package:flutter/material.dart';
import 'package:scouting_app/system/pit/newpitcontroller.dart';
import 'package:scouting_app/system/pit/pit.dart';
import 'package:scouting_app/widgets/mod_topbar.dart';

import '../widgets/numberform.dart';
import '../widgets/textform.dart';

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
      Pit feedbackPit = Pit(
        number: numteamController.text,
        name: nameteamController.text,
        chassis: chasisController.text,
        wheelType: wheelController.text,
      );

      NewPitController formPit = new NewPitController();


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
