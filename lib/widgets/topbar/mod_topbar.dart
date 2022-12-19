import 'package:flutter/material.dart';
import 'package:scouting6647/widgets/topbar/back.dart';

import 'topbar.dart';

class ModTopBar extends StatelessWidget {
  const ModTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BackIcon(color: Colors.black,),
        const TopBar(
          topPadding: 0,
        )
      ],
    );
  }
}
