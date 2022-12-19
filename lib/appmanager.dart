import 'package:flutter/material.dart';
import 'package:scouting6647/widgets/bottominterface/bottombarinterface.dart';

class AppManager extends StatelessWidget {
  const AppManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BottomBarInterface(),   
          // OverflowTopBar(topPadding: 60),
        ],
      ),
    );
  }
}
