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
            //LO DE ROB TODO: BORRAR
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 0,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: numteamController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter team number",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),

                      // TextFormField(
                      //   controller: nameteamController,
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return "Enter Valid Name";
                      //     } else {
                      //       return null;
                      //     }
                      //   },
                      //   decoration: InputDecoration(hintText: "Nombre del equipo"),
                      // ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: nameteamController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter team name",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),

                      // TextFormField(
                      //   controller: numteamController,
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return "Enter Valid Name";
                      //     } else {
                      //       return null;
                      //     }
                      //   },
                      //   decoration: InputDecoration(hintText: "Numero de equipo"),
                      // ),

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Match Number",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: matchnumController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter match num",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),

                      // TextFormField(
                      //   controller: chasisController,
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return "Enter Valid Name";
                      //     } else {
                      //       return null;
                      //     }
                      //   },
                      //   decoration: InputDecoration(hintText: "Tipo de chasis"),
                      // ),

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Game type",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: matchtypeController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter match type",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),

                      // TextFormField(
                      //   controller: wheelController,
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return "Enter Valid Name";
                      //     } else {
                      //       return null;
                      //     }
                      //   },
                      //   decoration: InputDecoration(hintText: "Tipo de llantas"),
                      // ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: allianceController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter alliance color",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),

//Inicia TarmacAuto
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Robot move out from the Tarmac? (Yes/No)",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: tarmacautoController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid answer",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin TarmacAuto

//Inicia LowerAuto
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Lower Hub (Autonomus)",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: lowerautoController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid score",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
// Fin LowerAuto

// Inicia UpperAuto
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Upper Hub (Autonomus)",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: upperautoController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid number",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Termina UpperAuto

//Inicia LowerTeleop

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Lower Hub (Teleop)",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: lowerteleopController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid number",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin LowerTeleop

//Inicia UpperTeleop

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Upper Hub (Teleop)",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: upperteleopController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter match type",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin UpperTeleop

//Inicia Defended
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Did robot defend?",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: defendedController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid text",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
// Fin Defended

//Inicia GotDefended

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Robot got defended?",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: gotdefendedController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid text",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin GotDefended

//Inicia rung

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Robot climbed? (Lower, Mid, Upper, Traversal Rung)",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: rungController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid rung",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin Rung

//Inicia Fouls
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: foulsController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid number",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin Fouls

//Inicia TechFouls

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Tech Fouls",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: techfoulsController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid number",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin TechFouls

//Inicia alliancescore

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Alliance Score",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: alliancescoreController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid number",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin alliancescore

//Inicia RP

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Ranking Points Earned",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: rpController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid number",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin RP

//Iniciar Won

                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Alliance won? (Yes/No)",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: wonController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter valid text",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
//Fin won

//Iniciar comments
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 30),
                          child: Text(
                            "Comments:",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, right: 30, left: 30),
                        child: TextFormField(
                          controller: commentController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter match type",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          _submitForm();
                        },
                        child: Text("Save"),
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
