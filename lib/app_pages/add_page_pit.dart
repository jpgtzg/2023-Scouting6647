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
          _showSnackBar("Se han enviado los datos");
        } else {
          _showSnackBar("Un error ha ocurrido, vuelve a intentarlo");
        }
      });

      _showSnackBar("Enviando informacion");
      formController.submitForm(feedbackForm);
    }
  }

  _showSnackBar(String message) {
    final snackbar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Datos enviados")));

    //_scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
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
            TextFormField(
              controller: nameteamController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Valid Name";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(hintText: "Nombre del equipo"),
            ),
            TextFormField(
              controller: numteamController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Valid Name";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(hintText: "Numero de equipo"),
            ),
            TextFormField(
              controller: chasisController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Valid Name";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(hintText: "Tipo de chasis"),
            ),
            TextFormField(
              controller: wheelController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Valid Name";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(hintText: "Tipo de llantas"),
            ),
            ElevatedButton(
              onPressed: () {
                _submitForm();
              },
              child: Text("Guardar"),
            )
          ],
        ),
      ),
    );
  }
}
