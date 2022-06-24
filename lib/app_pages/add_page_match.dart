import 'package:flutter/material.dart';
import 'package:scouting_app/models/formdivider.dart';
import 'package:scouting_app/models/numberform.dart';
import 'package:scouting_app/models/textform.dart';
import 'package:scouting_app/widgets/topbar.dart';
import 'package:scouting_app/system/controller_match.dart';
import 'package:scouting_app/system/feedback_match.dart';

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

  void submitForm() {
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
          _showSnackBar("Se han enviado los datos");
        } else {
          _showSnackBar("Un error ha ocurrido, vuelve a intentarlo");
        }
      });

      _showSnackBar("Enviando informacion");
      formMatch.submitForm(feedbackMatch);
    }
  }

  _showSnackBar(String message) {
    final snackbar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Lmao")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key : _scaffoldKey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {Navigator.pop(context);},
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
          const   TopBar(
            topPadding: 0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const NumberForm(
                      text: "Team number",
                      formText: "Enter team number",
                      padding: 0,
                          child: TextFormField(
                            controller: numteamController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Valid Number";
                              } else {
                                return null;
                              }
                            },
                    ),
                    const TextForm(
                      text: "Team name",
                      formText: "Enter team name",
                      padding: 50,
                    ),
                    const NumberForm(
                      text: "Match number",
                      formText: "Enter match number",
                      padding: 50,
                    ),
                    const TextForm(
                      text: "Match type",
                      formText: "Enter match type",
                      padding: 50,
                    ),
                    const TextForm(
                      text: "Alliance",
                      formText: "Enter alliance",
                      padding: 50,
                    ),
                    const FormDivider(
                      dividerText: "Autonomous",
                    ),
                    const TextForm(
                      text: "Left tarmac?",
                      formText: "Yes/No",
                      padding: 30,
                    ),
                    const NumberForm(
                      text: "Lower Hub Cargo",
                      formText: "Enter cargo number",
                      padding: 50,
                    ),
                    const NumberForm(
                      text: "Upper Hub Cargo",
                      formText: "Enter cargo number",
                      padding: 50,
                    ),
                    const FormDivider(
                      dividerText: "Teleop",
                    ),
                    const NumberForm(
                      text: "Lower Hub Cargo",
                      formText: "Enter cargo number",
                      padding: 30,
                    ),
                    const NumberForm(
                      text: "Upper Hub Cargo",
                      formText: "Enter cargo number",
                      padding: 50,
                    ),
                    const TextForm(
                      text: "Robot defended?",
                      formText: "Yes/No",
                      padding: 50,
                    ),
                    const TextForm(
                      text: "Was the robot defended?",
                      formText: "Yes/No",
                      padding: 50,
                    ),
                    const FormDivider(
                      dividerText: "Endgame",
                    ),
                    const TextForm(
                      text: "Rung climbed",
                      formText: "Enter answer",
                      padding: 30,
                    ),
                    const FormDivider(
                      dividerText: "Fouls",
                    ),
                    const NumberForm(
                      text: "Fouls made",
                      formText: "Enter number",
                      padding: 30,
                    ),
                    const NumberForm(
                      text: "Tech fouls made",
                      formText: "Enter number",
                      padding: 50,
                    ),
                    const FormDivider(
                      dividerText: "Match results",
                    ),
                    const NumberForm(
                      text: "Alliance score",
                      formText: "Enter score",
                      padding: 30,
                    ),
                    const NumberForm(
                      text: "Ranking points",
                      formText: "Enter ranking points",
                      padding: 50,
                    ),
                    const TextForm(
                      text: "Alliance won?",
                      formText: "Yes/No",
                      padding: 50,
                    ),
                    const FormDivider(
                      dividerText: "Extra comments",
                    ),
                    const TextForm(
                      text: "",
                      formText: "Enter comments",
                      padding: 0,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
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
          )
        ],
      ),
    );
  }
}
