import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({Key? key, required this.dividerText}) : super(key: key);

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Divider(
          color: Colors.black,
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 180),
          child: Text(
            dividerText,
            style: const TextStyle(
              fontFamily: "Oxygen",
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
