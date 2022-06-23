import 'package:flutter/material.dart';
import 'package:scouting_app/app_pages/addpagemanager.dart';
import 'package:scouting_app/appmanager.dart';
import 'package:scouting_app/models/formdivider.dart';
import 'package:scouting_app/models/numberform.dart';
import 'package:scouting_app/models/textform.dart';
import 'package:scouting_app/widgets/topbar.dart';

class AddPageMatch extends StatefulWidget {
  const AddPageMatch({Key? key}) : super(key: key);

  @override
  State<AddPageMatch> createState() => _AddPageMatchState();
}

class _AddPageMatchState extends State<AddPageMatch> {
  void submit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
