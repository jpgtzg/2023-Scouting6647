import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scouting_app/robot_gallery/match/matchdetails.dart';
import 'package:scouting_app/robot_gallery/pit/pitdetails.dart';
import 'package:scouting_app/system/fetch/feedback_gallery.dart';
import 'package:scouting_app/widgets/topbar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RobotDetails extends StatelessWidget {
  List<FeedbackGallery> feedbackItems = <FeedbackGallery>[];

  String teamNumber;

  RobotDetails(this.teamNumber);
  @override
  Widget build(BuildContext context) {
    AssetImage image3 = AssetImage("assets/images/background/back2.jpeg");
    precacheImage(image3, context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 10.0,
            ),
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
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left : 20.0, right : 20),
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
                          MatchDetails(),
                          PitDetails(),
                          // Ingredients(recipeModel),
                          // Instructions(recipeModel),
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
      // body: Stack(
      //   children: [
      //     SlidingUpPanel(
      //       minHeight: (size.height / 1.3),
      //       maxHeight: (size.height / 2),
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(32),
      //         topRight: Radius.circular(32),
      //       ),
      //       // parallaxEnabled: true,
      //       body: SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             SizedBox(
      //               height: 170,
      //             ),
      //             Align(
      //               alignment: Alignment.topCenter,
      //               child: Hero(
      //                 tag: image3,
      //                 child: Image(
      //                   height: (size.height / 2) + 50,
      //                   width: double.infinity,
      //                   fit: BoxFit.cover,
      //                   image: image3,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       panel: Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Center(
      //               child: Container(
      //                 height: 5,
      //                 width: 40,
      //                 decoration: BoxDecoration(
      //                   color: Colors.black.withOpacity(0.3),
      //                   borderRadius: BorderRadius.circular(12),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               height: 30,
      //             ),
      //             Text(""
      //                 // recipeModel.title,
      //                 // style: recipeNameStyle,
      //                 ),
      //             SizedBox(
      //               height: 20,
      //             ),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Divider(
      //               color: Colors.black.withOpacity(0.3),
      //             ),
      //             Expanded(
      //               child: DefaultTabController(
      //                 length: 2,
      //                 initialIndex: 0,
      //                 child: Column(
      //                   children: [
      //                     TabBar(
      //                       labelColor: Colors.black,
      //                       unselectedLabelColor: Colors.black.withOpacity(0.3),
      //                       labelStyle: TextStyle(
      //                         fontWeight: FontWeight.w600,
      //                       ),
      //                       labelPadding: EdgeInsets.symmetric(
      //                         horizontal: 32,
      //                       ),
      //                       tabs: [
      //                         Tab(
      //                           text: "Match".toUpperCase(),
      //                         ),
      //                         Tab(
      //                           text: "Pit".toUpperCase(),
      //                         ),
      //                       ],
      //                     ),
      //                     Divider(
      //                       color: Colors.black.withOpacity(0.3),
      //                     ),
      //                     Expanded(
      //                       child: TabBarView(
      //                         children: [
      //                           Text("Hasdaasdgasgasdfgadfgmadsiuvfnasdiufgnmasdufgnasudgniausdnguiasdnguiadfngaduiofngaidujfngadngjkadngjkadngfjasdfgasdfgadfgadfgadpofgadiogmadfgmadumnguadnguadnfguyhadnghuadnfghuandghuadnganguhdfnghuadnfghoadngfijadnfgjadnfgjadngfadnfgjkadngfjandfgoijadnfgjadnfgijanjgfnajignajidgnajdgnajdgnajdngadjfgnadfhjgnadgnadjifgnajdgnadjh"),
      //                           Text("asfasdf"),
      //                           // Ingredients(recipeModel),
      //                           // Instructions(recipeModel),
      //                         ],
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //     Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(
      //             top: 50.0,
      //             left: 10.0,
      //           ),
      //           child: Row(
      //             children: [
      //               IconButton(
      //                 onPressed: () {
      //                   Navigator.pop(context);
      //                 },
      //                 icon: const Image(
      //                   height: 30,
      //                   width: 30,
      //                   image: AssetImage("assets/images/back.png"),
      //                 ),
      //               ),
      //               const SizedBox(
      //                 width: 5,
      //               ),
      //               const Text(
      //                 "Back",
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         const TopBar(
      //           topPadding: 0,
      //         ),
      //       ],
      //     ),
      //  ],
      //),
    );
  }
}
