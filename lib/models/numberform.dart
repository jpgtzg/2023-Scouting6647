import 'package:flutter/material.dart';

class NumberForm extends StatelessWidget {
  const NumberForm({Key? key, required this.formText}) : super(key: key);

  
  final String formText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: formText,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(),
        ),
        //fillColor: Colors.green
      ),
      keyboardType: TextInputType.number,
      style: const TextStyle(
        fontFamily: "Poppins",
      ),
    );
  }
}
