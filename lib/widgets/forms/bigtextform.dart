import 'package:flutter/material.dart';

class BigTextForm extends StatelessWidget {
  const BigTextForm(
      {Key? key,
      required this.text,
      required this.formText,
      required this.padding,
      required this.controller})
      : super(key: key);

  final String formText;
  final String text;
  final double padding;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: padding,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 30),
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: "Manrope",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 30, left: 30),
          child: SizedBox(
            height: 200,
            child: TextFormField(
              maxLines: 200,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Valid Answer";
                } else {
                  return null;
                }
              },
              controller: controller,
              decoration: InputDecoration(
                labelText: formText,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(),
                ),
              ),
              style: const TextStyle(
                fontFamily: "Poppins",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
