import 'package:flutter/material.dart';
import 'package:scouting6647/screens/robot_gallery/match/matchdetails.dart';
import 'package:scouting6647/screens/robot_gallery/notes/notesdetails.dart';
import 'package:scouting6647/screens/robot_gallery/pit/pitdetails.dart';
import 'package:scouting6647/widgets/topbar/back.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// ignore: must_be_immutable
class RobotDetails extends StatelessWidget {
  String teamNumber;
  String image;

  RobotDetails(this.teamNumber, this.image);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    AssetImage image3 = AssetImage("assets/images/background/back2.jpeg");
    precacheImage(image3, context);
    return Scaffold(
      body: Stack(
        children: [
          Column(children: [
            Expanded(
              child: SlidingUpPanel(
                minHeight: (size.height / 2),
                maxHeight: (size.height / 1.2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
                color: Color(0xff151515),
                parallaxEnabled: true,
                body: Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    height: size.height / 1.8,
                    width: size.width,
                    fit: BoxFit.cover,
                    image: NetworkImage(image),
                  ),
                ),
                panel: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white.withOpacity(0.3),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 32,
                          ),
                          tabs: [
                            Tab(
                              text: "Match".toUpperCase(),
                            ),
                            Tab(
                              text: "Pit".toUpperCase(),
                            ),
                            Tab(
                              text: "Notes".toUpperCase(),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              MatchDetails(teamNumber),
                              PitDetails(teamNumber),
                              NotesDetails(teamNumber),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
          BackIcon(color: Colors.black)
        ],
      ),
    );
  }
}
