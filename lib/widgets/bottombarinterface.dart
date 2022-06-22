import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:scouting_app/app_pages/add_page_match.dart';

class BottomBarInterface extends StatefulWidget {
  const BottomBarInterface({Key? key}) : super(key: key);

  @override
  State<BottomBarInterface> createState() => _BottomBarInterfaceState();
}

class _BottomBarInterfaceState extends State<BottomBarInterface> {
//
  int _currentIndex = 0;
  late PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
                const AddPageMatch(),
                Container(
                  color: Colors.red,
                ),
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
                title: const Text('Home'),
                icon: const Icon(Icons.home),
              ),
              BottomNavyBarItem(
                title: const Text('Robots'),
                icon: const Icon(Icons.apps),
              ),
              BottomNavyBarItem(
                  title: const Text('Settings'),
                  icon: const Icon(Icons.settings)),
            ],
          ),
        ),
      ],
    );
  }
}
