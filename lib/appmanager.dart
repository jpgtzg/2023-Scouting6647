import 'package:flutter/material.dart';
import 'package:scouting_app/widgets/bottombarinterface.dart';
import 'package:scouting_app/widgets/topbar.dart';

class AppManager extends StatelessWidget {
  const AppManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BottomBarInterface(),   
          TopBar(topPadding: 40,),
        ],
      ),
    );
  }
}
