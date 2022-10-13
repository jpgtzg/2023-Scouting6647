import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff151515),
      child: Center(
        child: Container(
          height: 230,
          child: Column(
            children: [
              Icon(
                Icons.construction,
                size: MediaQuery.of(context).size.height / 4,
                color: Colors.white,
              ),
              Text(
                "Oh! This area is not ready yet. Come back later",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
