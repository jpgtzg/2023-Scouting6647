import 'package:flutter/material.dart';

class TeleopDetails extends StatelessWidget {
  final String title;
  final String defendedanswer;

  final String godefendedanswer;

  final String lowerteleopanswer;

  final String upperteleopanswer;

  const TeleopDetails({
    required this.title,
    required this.defendedanswer,
    required this.godefendedanswer,
    required this.lowerteleopanswer,
    required this.upperteleopanswer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
        bottom: 25,
        left: 15,
        right: 15
      ),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        /* image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.blueAccent.withOpacity(0.15),
            BlendMode.srcOver,
          ),
        ), */
        color: Colors.white,
        // color: Color(0xff1E91D6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
          Positioned(
            top: 40,
            child: Container(
              padding: EdgeInsets.only(
                top: 2,
                bottom: 2,
                left: 8,
                right: 8,
              ),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.lightBlue,
              ),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      "Defended:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      defendedanswer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Got defended:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      godefendedanswer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            child: Container(
              padding: EdgeInsets.only(
                top: 2,
                bottom: 2,
                left: 8,
                right: 8,
              ),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.lightBlue,
              ),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      "Lower Score:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      lowerteleopanswer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Upper Score",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      upperteleopanswer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
