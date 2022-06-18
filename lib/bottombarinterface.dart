import 'package:flutter/material.dart';

class BottomBarInterface extends StatefulWidget {
  const BottomBarInterface({Key? key}) : super(key: key);

  @override
  State<BottomBarInterface> createState() => _BottomBarInterfaceState();
}

class _BottomBarInterfaceState extends State<BottomBarInterface> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          bottomNavigationBar: SizedBox(
            height: 100,
            child: BottomAppBar(
              color: Colors.indigo,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.indigo,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
