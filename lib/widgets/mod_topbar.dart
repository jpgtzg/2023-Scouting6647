import 'package:flutter/material.dart';

import 'topbar.dart';

class ModTopBar extends StatelessWidget {
  const ModTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("assets/images/back.png"),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Back",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const TopBar(
          topPadding: 0,
        )
      ],
    );
  }
}
