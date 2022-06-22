import 'package:flutter/material.dart';
import 'package:scouting_app/models/formdivider.dart';
import 'package:scouting_app/models/numberform.dart';
import 'package:scouting_app/models/textform.dart';

class AddPageMatch extends StatelessWidget {
  const AddPageMatch({Key? key}) : super(key: key);

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // AGREGA PADDING
        children: [
          const SizedBox(
            height: 120.0,
            // color: Colors.white,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    NumberForm(
                      text: "Team number",
                      formText: "Enter team number",
                    ),
                    TextForm(
                      text: "Team name",
                      formText: "Enter team name",
                    ),
                    NumberForm(
                      text: "Match number",
                      formText: "Enter match number",
                    ),
                    TextForm(
                      text: "Match type",
                      formText: "Enter match type",
                    ),
                    TextForm(
                      text: "Alliance",
                      formText: "Enter alliance",
                    ),
                    FormDivider(
                      dividerText: "Autonomous",
                    ),
                    TextForm(
                      text: "Left tarmac?",
                      formText: "Yes/No",
                    ),
                    NumberForm(
                      text: "Lower Hub Cargo",
                      formText: "Enter cargo number",
                    ),
                    NumberForm(
                      text: "Upper Hub Cargo",
                      formText: "Enter cargo number",
                    ),
                    FormDivider(
                      dividerText: "Teleop",
                    ),
                    NumberForm(
                      text: "Lower Hub Cargo",
                      formText: "Enter cargo number",
                    ),
                    NumberForm(
                      text: "Upper Hub Cargo",
                      formText: "Enter cargo number",
                    ),
                    TextForm(
                      text: "Robot defended?",
                      formText: "Yes/No",
                    ),
                    TextForm(
                      text: "Was the robot defended?",
                      formText: "Yes/No",
                    ),
                    FormDivider(dividerText: "Endgame"),
                    TextForm(
                      text: "Rung climbed",
                      formText: "Enter answer",
                    ),
                    FormDivider(
                      dividerText: "Fouls",
                    ),
                    NumberForm(
                      text: "Fouls made",
                      formText: "Enter number",
                    ),
                    NumberForm(
                      text: "Tech fouls made",
                      formText: "Enter number",
                    ),
                    FormDivider(
                      dividerText: "Match results",
                    ),
                    NumberForm(
                      text: "Alliance score",
                      formText: "Enter score",
                    ),
                    NumberForm(
                        text: "Ranking points",
                        formText: "Enter ranking points"),
                    TextForm(
                      text: "Alliance won?",
                      formText: "Yes/No",
                    ),
                    FormDivider(
                      dividerText: "Extra comments",
                    ),
                    TextForm(
                      text: "",
                      formText: "Enter comments",
                    ),
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
