import 'package:flutter/material.dart';
import 'package:scouting_app/system/match/match.dart';
import 'package:scouting_app/system/match/matchcontroller.dart';

import '../../widgets/forms/formdivider.dart';
import '../../widgets/forms/numberform.dart';
import '../../widgets/forms/textform.dart';
import '../../widgets/topbar/mod_topbar.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({Key? key}) : super(key: key);

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
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
      Match feedbackMatch = Match(
        number: numteamController.text,
        name: nameteamController.text,
        matchnum: matchnumController.text,
        matchtype: matchtypeController.text,
        alliance: allianceController.text,
        tarmacauto: tarmacautoController.text,
        lowerauto: lowerautoController.text,
        upperauto: upperteleopController.text,
        lowerteleop: lowerteleopController.text,
        upperteleop: upperteleopController.text,
        defended: defendedController.text,
        gotdefended: gotdefendedController.text,
        rung: rungController.text,
        fouls: foulsController.text,
        techfouls: techfoulsController.text,
        alliancescore: alliancescoreController.text,
        rp: rpController.text,
        won: wonController.text,
        comments: commentController.text,
      );

      MatchController formMatch = new MatchController();

      _showSnackBar("Sending infromation");
      formMatch.insertData(feedbackMatch);
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
                        formText: "Enter short comment",
                        padding: 0,
                        controller: commentController,
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
