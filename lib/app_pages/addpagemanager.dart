import 'package:flutter/material.dart';
import 'package:scouting_app/app_pages/add_page_match.dart';
import 'package:scouting_app/app_pages/add_page_pit.dart';
import 'package:scouting_app/widgets/bigbutton.dart';
import 'package:scouting_app/widgets/overflowtobbar.dart';

class AddPageManager extends StatefulWidget {
  const AddPageManager({Key? key}) : super(key: key);

  @override
  State<AddPageManager> createState() => _AddPageManagerState();
}

class _AddPageManagerState extends State<AddPageManager> {
  late AssetImage image1;
  late AssetImage image3;
  late AssetImage image4;
  @override
  void initState() {
    super.initState();
    image1 = AssetImage("assets/images/background/back3.jpeg");
    image3 = AssetImage("assets/images/background/back2.jpeg");
    image4 = AssetImage("assets/images/background/back1.jpeg");
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1, context);
    precacheImage(image3, context);
    precacheImage(image4, context);
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
                                  builder: (context) => const AddPageMatch()));
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
                                  builder: (context) => const AddPagePit()));
                            },
                          ),
                          SizedBox(
                            height: 30,
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




            /*
            x
        */