import 'package:flutter/material.dart';

class OverflowTopBar extends StatelessWidget {
  const OverflowTopBar({Key? key, required this.topPadding}) : super(key: key);

  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: topPadding),
              child: Container(
                height: 65,
                width: 195,
                child: const Center(
                    child: Flexible(
                  child: Text(
                    "VOLTEC 6647",
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffFFFFFF),
                      fontSize: 52,
                    ),
                  ),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, top: topPadding + 20),
              child: const Image(
                alignment: Alignment.topLeft,
                height: 80,
                width: 80,
                image: AssetImage('assets/images/Logo.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
