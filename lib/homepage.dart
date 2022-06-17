// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:scouting_app/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TopBar(),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 300),
                Container(
                  height: 65,
                  width: 200,
                  child: const Center(
                    child: Text(
                      "New team",
                      style: TextStyle(
                        fontFamily: "Oxygen",
                        color: Colors.white, //darkGreyColor,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo),
                ),

                const SizedBox(height: 70),

                Container(
                  height: 65,
                  width: 200,
                  child: const Center(
                    child: Text(
                      "New team",
                      style: TextStyle(
                        fontFamily: "Oxygen",
                        color: Colors.white, //darkGreyColor,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo),
                ),

                const SizedBox(height: 70),

                Container(
                  height: 65,
                  width: 200,
                  child: const Center(
                    child: Text(
                      "New team",
                      style: TextStyle(
                        fontFamily: "Oxygen",
                        color: Colors.white, //darkGreyColor,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
