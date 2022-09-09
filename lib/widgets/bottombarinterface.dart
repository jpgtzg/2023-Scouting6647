import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:scouting_app/app_pages/addpagemanager.dart';
import 'package:scouting_app/robot_gallery/robot_list.dart';

class BottomBarInterface extends StatefulWidget {
  const BottomBarInterface({Key? key}) : super(key: key);

  @override
  State<BottomBarInterface> createState() => _BottomBarInterfaceState();
}

class _BottomBarInterfaceState extends State<BottomBarInterface> {
//
  int _currentIndex = 0;
  late final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: SizedBox.expand(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: <Widget>[
                const AddPageManager(),
                ListGallery(),
                Container(
                  color: Colors.green,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                title: const Text(
                  'Home',
                  style: TextStyle(fontFamily: "Manrope"),
                ),
                icon: const Icon(Icons.home),
                activeColor: const Color(0xff2356A2),
              ),
              BottomNavyBarItem(
                title: const Text(
                  'Robots',
                  style: TextStyle(fontFamily: "Manrope"),
                ),
                icon: const Icon(Icons.apps),
                activeColor: const Color(0xff2356A2),
              ),
              BottomNavyBarItem(
                title: const Text(
                  'Settings',
                  style: TextStyle(fontFamily: "Manrope"),
                ),
                icon: const Icon(Icons.settings),
                activeColor: const Color(0xff2356A2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
