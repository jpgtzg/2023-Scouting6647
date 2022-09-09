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
        const SizedBox(
          width: 320,
          child:  Divider(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 30),
            child: Text(
              dividerText,
              style: const TextStyle(
                fontFamily: "Manrope",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
