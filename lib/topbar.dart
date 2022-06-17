import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Container(
              height: 65,
              width: 195,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                // color: Colors.black,
              ),
              child: const Center(
                  child: Text(
                "VOLTEC 6647",
                style: TextStyle(
                  fontFamily: "Oxygen",
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo, //darkGreyColor,
                  fontSize: 25,
                ),
              )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10, top: 50),
            child: Image(
              alignment: Alignment.topLeft,
              height: 80,
              width: 80,
              image: AssetImage('assets/images/Logo.png'),),
          )
        ],
      );
  }
}