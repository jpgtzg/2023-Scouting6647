import 'package:flutter/material.dart';
import 'package:scouting_app/robot_gallery/match/matchdetails.dart';
import 'package:scouting_app/robot_gallery/pit/pitdetails.dart';
import 'package:scouting_app/widgets/mod_topbar.dart';

// ignore: must_be_immutable
class RobotDetails extends StatelessWidget {
  String teamNumber;
  String image;

  RobotDetails(this.teamNumber, this.image);

  @override
  Widget build(BuildContext context) {
    AssetImage image3 = AssetImage("assets/images/background/back2.jpeg");
    precacheImage(image3, context);
    return Scaffold(
      body: Column(
        children: [
          ModTopBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black.withOpacity(0.3),
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
                      ],
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          MatchDetails(teamNumber),
                          PitDetails(teamNumber, image),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
