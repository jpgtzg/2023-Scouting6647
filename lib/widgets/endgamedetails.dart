import 'package:flutter/material.dart';

class EndgameDetails extends StatelessWidget {
  final String title;
  final String runganswer;

  final String fouslanswer;

  final String techfoulsanswer;

  final String scoreanswer;

  final String rpanswer;

  final String wonAnswer;

  final String commentsAnswer;

  const EndgameDetails({
    required this.title,
    required this.runganswer,
    required this.fouslanswer,
    required this.techfoulsanswer,
    required this.scoreanswer,
    required this.rpanswer,
    required this.wonAnswer,
    required this.commentsAnswer
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 25, left: 15, right: 15),
      height: 320,
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
                      "Rung:",
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
                      runganswer,
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
                      "Fouls",
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
                      fouslanswer,
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
                      "Tech Fouls:",
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
                      techfoulsanswer,
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
            top: 140,
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
                      "Score:",
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
                      scoreanswer,
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
                      "Ranking Points:",
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
                      rpanswer,
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
            top: 190,
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
                      "Won:",
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
                      wonAnswer,
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
                    
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 240,
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
                      "Comments:",
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
                      commentsAnswer,
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
