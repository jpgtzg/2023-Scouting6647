import 'package:flutter/material.dart';
import 'package:scouting_app/system/controller.dart';
import 'package:scouting_app/system/feedback_form.dart';

import '../widgets/topbar.dart';

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
      FeedbackForm feedbackForm = FeedbackForm(
        nameteamController.text,
        numteamController.text,
        chasisController.text,
        wheelController.text,
      );

      FormController formController = FormController((String response) {
        print(response);
        if (response == FormController.STATUS_SUCCESS) {
          _showSnackBar("Data has been sent");
        } else {
          _showSnackBar("An error has ocurred, try again later");
        }
      });

      _showSnackBar("Sending information");
      formController.submitForm(feedbackForm);
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
                            "Team name",
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
                            "Team number",
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
                            "Chassis type",
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
                          controller: chasisController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter chassis type",
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
                            "Wheel type",
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
                          controller: wheelController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter valid answer";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Enter wheel type",
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
