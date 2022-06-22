import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {

  const TextForm({Key? key, required this.formText}) : super(key: key);

  final String formText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: formText,
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
    );
  }
}
