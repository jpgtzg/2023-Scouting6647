import 'package:flutter/material.dart';
import 'package:scouting_app/system/notes/notes.dart';
import 'package:scouting_app/system/notes/notescontroller.dart';
import 'package:scouting_app/widgets/forms/bigtextform.dart';

import '../../widgets/forms/numberform.dart';
import '../../widgets/forms/textform.dart';
import '../../widgets/topbar/mod_topbar.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //TextField Controllers
  TextEditingController numteamController = TextEditingController();
  TextEditingController nameteamController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Notes feedbackPit = Notes(
        number: numteamController.text,
        name: nameteamController.text,
        notes: notesController.text,
      );

      NotesController formNotes = new NotesController();

      _showSnackBar("Sending information");
      formNotes.insertData(feedbackPit);
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
                      BigTextForm(
                        text: "Notes",
                        formText: "Enter notes",
                        padding: 50,
                        controller: notesController,
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
