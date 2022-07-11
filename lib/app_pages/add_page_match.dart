import 'package:flutter/material.dart';
import 'package:scouting_app/models/formdivider.dart';
import 'package:scouting_app/models/numberform.dart';
import 'package:scouting_app/models/textform.dart';
import 'package:scouting_app/system/pit/feedback_match.dart';
import 'package:scouting_app/widgets/topbar.dart';
import 'package:scouting_app/system/match/controller_match.dart';

class AddPageMatch extends StatefulWidget {
  const AddPageMatch({Key? key}) : super(key: key);

  @override
  State<AddPageMatch> createState() => _AddPageMatchState();
}

class _AddPageMatchState extends State<AddPageMatch> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //TextField Controllers
  TextEditingController numteamController = TextEditingController();
  TextEditingController nameteamController = TextEditingController();
  TextEditingController matchnumController = TextEditingController();
  TextEditingController matchtypeController = TextEditingController();
  TextEditingController allianceController = TextEditingController();
  TextEditingController tarmacautoController = TextEditingController();
  TextEditingController lowerautoController = TextEditingController();
  TextEditingController upperautoController = TextEditingController();
  TextEditingController lowerteleopController = TextEditingController();
  TextEditingController upperteleopController = TextEditingController();
  TextEditingController defendedController = TextEditingController();
  TextEditingController gotdefendedController = TextEditingController();
  TextEditingController rungController = TextEditingController();
  TextEditingController foulsController = TextEditingController();
  TextEditingController techfoulsController = TextEditingController();
  TextEditingController alliancescoreController = TextEditingController();
  TextEditingController rpController = TextEditingController();
  TextEditingController wonController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      FeedbackMatch feedbackMatch = FeedbackMatch(
        numteamController.text,
        nameteamController.text,
        matchnumController.text,
        matchtypeController.text,
        allianceController.text,
        tarmacautoController.text,
        lowerautoController.text,
        upperautoController.text,
        lowerteleopController.text,
        upperteleopController.text,
        defendedController.text,
        gotdefendedController.text,
        rungController.text,
        foulsController.text,
        techfoulsController.text,
        alliancescoreController.text,
        rpController.text,
        wonController.text,
        commentController.text,
      );

      FormMatch formMatch = FormMatch((String response) {
        print(response);
        if (response == FormMatch.STATUS_SUCCESS) {
          _showSnackBar("Data has been sent");
        } else {
          _showSnackBar("An error has ocurred, try again later");
        }
      });

      _showSnackBar("Sending infromation");
      formMatch.submitForm(feedbackMatch);
    }
  }

  _showSnackBar(String message) {
    final snackbar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Data sent")));
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
                      NumberForm(
                        text: "Match number",
                        formText: "Enter match number",
                        padding: 50,
                        controller: matchnumController,
                      ),
                      TextForm(
                        text: "Game type",
                        formText: "Enter game type",
                        padding: 50,
                        controller: matchtypeController,
                      ),
                      TextForm(
                        text: "Alliance color",
                        formText: "Enter alliance color",
                        padding: 50,
                        controller: allianceController,
                      ),
                      const FormDivider(dividerText: "Autonomous"),
                      TextForm(
                        text: "Robot moved out from Tarmac?",
                        formText: "Yes/No",
                        padding: 50,
                        controller: tarmacautoController,
                      ),
                      NumberForm(
                        text: "Lower Hub cargo",
                        formText: "Enter cargo score",
                        padding: 50,
                        controller: lowerautoController,
                      ),
                      NumberForm(
                        text: "Upper Hub cargo",
                        formText: "Enter cargo score",
                        padding: 50,
                        controller: upperautoController,
                      ),
                      const FormDivider(dividerText: "Teleop"),
                      NumberForm(
                        text: "Lower Hub cargo",
                        formText: "Enter cargo score",
                        padding: 50,
                        controller: lowerteleopController,
                      ),
                      NumberForm(
                        text: "Upper Hub cargo",
                        formText: "Enter cargo score",
                        padding: 50,
                        controller: upperteleopController,
                      ),
                      const FormDivider(dividerText: "Defence"),
                      TextForm(
                        text: "Did robot defended?",
                        formText: "Yes/No",
                        padding: 50,
                        controller: defendedController,
                      ),
                      TextForm(
                        text: "Robot got defended?",
                        formText: "Yes/No",
                        padding: 50,
                        controller: gotdefendedController,
                      ),
                      const FormDivider(dividerText: "Endgame"),
                      TextForm(
                        text: "Rung climbed",
                        formText: "Enter rung climbed",
                        padding: 50,
                        controller: rungController,
                      ),
                      const FormDivider(dividerText: "Fouls"),
                      NumberForm(
                        text: "Fouls made",
                        formText: "Enter number",
                        padding: 50,
                        controller: foulsController,
                      ),
                      NumberForm(
                        text: "Tech fouls made",
                        formText: "Enter number",
                        padding: 50,
                        controller: techfoulsController,
                      ),
                      const FormDivider(dividerText: "Match results"),
                      NumberForm(
                        text: "Alliance score",
                        formText: "Enter number",
                        padding: 50,
                        controller: alliancescoreController,
                      ),
                      NumberForm(
                        text: "Ranking points earned",
                        formText: "Enter number",
                        padding: 50,
                        controller: rpController,
                      ),
                      TextForm(
                        text: "Alliance won?",
                        formText: "Yes/No",
                        padding: 50,
                        controller: wonController,
                      ),
                      const FormDivider(dividerText: "Comments:"),
                      TextForm(
                        text: "",
                        formText: "Enter comments",
                        padding: 0,
                        controller: commentController,
                      ),
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
