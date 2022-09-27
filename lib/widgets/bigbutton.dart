import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String title;
  final VoidCallback pressSelect;
  final AssetImage image;

  const BigButton(
      {required this.title, required this.pressSelect, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressSelect,
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
          bottom: 25,
          left: 25,
        ),
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.blueAccent.withOpacity(0.15),
              BlendMode.srcOver,
            ),
          ),
          // color: Color(0xff1E91D6),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 2,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              right: 30,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(2),
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.lightBlue,
                ),
                child: Center(
                    child: Text(
                  'Seleccionar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            /* Positioned(
              right: 0,
              top: topValue,
              bottom: bottomValue,
              child: Container(
                width: 235,
                child: Image.asset(
                  routeModel.image,
                ),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
