import 'package:flutter/material.dart';
import 'package:scouting_app/screens/app_pages/match_page.dart';
import 'package:scouting_app/screens/app_pages/notes_page.dart';
import 'package:scouting_app/screens/app_pages/pit_page.dart';
import 'package:scouting_app/widgets/bigbutton.dart';

import '../../widgets/topbar/overflowtobbar.dart';

class AddPageManager extends StatefulWidget {
  const AddPageManager({Key? key}) : super(key: key);

  @override
  State<AddPageManager> createState() => _AddPageManagerState();
}

class _AddPageManagerState extends State<AddPageManager> {
  late AssetImage image1;
  late AssetImage image3;
  late AssetImage image4;
  late AssetImage image5;
  @override
  void initState() {
    super.initState();
    image1 = AssetImage("assets/images/background/back3.jpeg");
    image3 = AssetImage("assets/images/background/back2.jpeg");
    image4 = AssetImage("assets/images/background/back1.jpeg");
    image5 = AssetImage("assets/images/background/back6.jpeg");
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1, context);
    precacheImage(image3, context);
    precacheImage(image4, context);
    precacheImage(image5, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image1,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.blueAccent.withOpacity(0.3),
                BlendMode.srcOver,
              ),
            ),
          ),
        ),
        OverflowTopBar(topPadding: 60),
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height / 3.2),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff151515),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .8,
                  blurRadius: 4,
                  offset: Offset(1, 2),
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Scouting",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          BigButton(
                            title: "Match Scouting",
                            image: image3,
                            pressSelect: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const MatchPage()));
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          BigButton(
                            title: "Pit Scouting",
                            image: image4,
                            pressSelect: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const PitPage()));
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          BigButton(
                            title: "Extra notes",
                            image: image5,
                            pressSelect: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const NotesPage()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
