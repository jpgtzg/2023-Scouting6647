import 'package:flutter/material.dart';

class NumberForm extends StatelessWidget {
  const NumberForm({Key? key, required this.text, required this.formText}) : super(key: key);

  final String formText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 180),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Oxygen",
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 30, left: 30),
          child: TextFormField(
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
          ),
        ),
      ],
    );
  }
}
