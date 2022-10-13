import 'package:flutter/material.dart';

class AutoDetails extends StatelessWidget {
  final String title;
  final String tarmacautoanswer;
  final String lowerautoanswer;
  final String uppwerautoanswer;
  const AutoDetails({
    required this.title,
    required this.tarmacautoanswer,
    required this.lowerautoanswer,
    required this.uppwerautoanswer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
        bottom: 25,
        left: 15,
      ),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Color(0xff1E91D6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 2,
            child: Text(
              "Autonomous",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            left: 0,
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
                      "Left Tarmac:",
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
                      tarmacautoanswer,
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
            left: 0,
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
                      lowerautoanswer,
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
                      "Upper Score:",
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
                      uppwerautoanswer,
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
