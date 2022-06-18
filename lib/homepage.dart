import 'package:flutter/material.dart';
import 'package:scouting_app/bottombarinterface.dart';
import 'package:scouting_app/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BottomBarInterface(),   
          const TopBar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Center(
                  child: Image(
                      image: AssetImage('assets/images/add.png'),
                      height: 80,
                      width: 80),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
