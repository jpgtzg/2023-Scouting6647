import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {

  const TextForm({Key? key, required this.text, required this.formText}) : super(key: key);

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
          padding: const EdgeInsets.only(bottom: 10.0, right: 30, left : 30),
          child: TextFormField(
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
          ),
        ),
      ],
    );
  }
}
