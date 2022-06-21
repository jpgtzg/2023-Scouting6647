import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class BottomBarInterface extends StatefulWidget {
  const BottomBarInterface({Key? key}) : super(key: key);

  @override
  State<BottomBarInterface> createState() => _BottomBarInterfaceState();
}

class _BottomBarInterfaceState extends State<BottomBarInterface> {
//
  int _currentIndex = 0;
  late PageController _pageController = new PageController();

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
                Container(
                  color: Colors.blueGrey,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
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
                  title: const Text('Item One'), icon: const Icon(Icons.home)),
              BottomNavyBarItem(
                  title: const Text('Item Two'), icon: const Icon(Icons.apps)),
              BottomNavyBarItem(
                  title: const Text('Item Three'), icon: const Icon(Icons.chat_bubble)),
              BottomNavyBarItem(
                  title: const Text('Item Four'), icon: const Icon(Icons.settings)),
            ],
          ),
        ),
      ],
    );
  }
}
