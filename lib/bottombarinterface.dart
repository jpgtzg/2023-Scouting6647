import 'package:flutter/material.dart';

class BottomBarInterface extends StatefulWidget {
  const BottomBarInterface({Key? key}) : super(key: key);

  @override
  State<BottomBarInterface> createState() => _BottomBarInterfaceState();
}

class _BottomBarInterfaceState extends State<BottomBarInterface> {
  //Variables and methods
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            body: Center(
              child: _pages.elementAt(selectedIndex), //New
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.amberAccent,
              backgroundColor: Colors.indigo,
              selectedFontSize: 15,
              selectedIconTheme: const IconThemeData(color: Colors.amberAccent, size: 32),
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedFontSize: 10,
              showUnselectedLabels: false,
              iconSize: 28,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: "Calls",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.camera),
                  label: "Camera",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: "Chats",
                ),
              ],
              currentIndex: selectedIndex,
              onTap: onItemTapped,
            )

            /* SizedBox(
              height: 100,
              child: BottomAppBar(
                color: Colors.indigo,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
              ),
            ), */
            
            ),
        Padding(
          padding: const EdgeInsets.only(bottom: 90),
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
