import 'package:flutter/material.dart';
import 'package:scouting_app/models/numberform.dart';
import 'package:scouting_app/models/textform.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Team Number",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(
                        formText: "Enter Team Number",
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Team Name",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(
                        formText: "Enter team name",
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Match number",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(
                        formText: "Enter match number",
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Match type",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(
                        formText: "Enter match type",
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Alliance",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(formText: "Enter alliance"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Autonomous",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Left Tarmac?",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(formText: "Yes/No"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Lower Hub Cargo",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(formText: "Enter cargo number"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Upper Hub cargo",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(
                        formText: "Enter cargo number",
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Teleop",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Lower Hub Cargo",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(formText: "Enter cargo number"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Upper Hub cargo",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(formText: "Enter cargo number"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Robot defended?",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(formText: "Yes/No"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Was the robot defended?",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(formText: "Yes/No"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Endgame",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Rung climbed",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(formText: "Enter answer"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Fouls",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Fouls made",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(formText: "Enter number"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Tech fouls made",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(formText: "Enter number"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Match results",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Alliance score",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(formText: "Enter score"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Ranking points",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: NumberForm(formText: "Enter ranking points"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Alliance won?",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(formText: "Yes/No"),
                    ),
                    
                    SizedBox(
                      height: 50,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 180),
                      child: Text(
                        "Extra comments",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextForm(formText: "Enter comments"),
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
