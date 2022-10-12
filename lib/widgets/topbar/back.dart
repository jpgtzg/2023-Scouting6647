import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  final Color? color;
  const BackIcon({required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 10.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image(
              height: 30,
              width: 30,
              image: AssetImage("assets/images/back.png"),
              color: color,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Back",
            style: TextStyle(
              fontFamily: "Manrope",
              fontSize: 18,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
