import 'package:flutter/material.dart';
import 'package:scouting_app/app_pages/add_page_match.dart';
import 'package:scouting_app/app_pages/add_page_pit.dart';
import 'package:scouting_app/robot_gallery/robot_list.dart';
import 'package:scouting_app/system/list/list.dart';
import 'package:scouting_app/widgets/bigbutton.dart';

class AddPageManager extends StatefulWidget {
  const AddPageManager({Key? key}) : super(key: key);

  @override
  State<AddPageManager> createState() => _AddPageManagerState();
}

class _AddPageManagerState extends State<AddPageManager> {
  @override
  Widget build(BuildContext context) {
    AssetImage image1 = AssetImage("assets/images/background/back3.jpeg");
    precacheImage(image1, context);
    AssetImage image2 = AssetImage("assets/images/background/back5.jpeg");
    precacheImage(image2, context);
    AssetImage image3 = AssetImage("assets/images/background/back2.jpeg");
    precacheImage(image3, context);
    AssetImage image4 = AssetImage("assets/images/background/back1.jpeg");
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image1,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.blueAccent.withOpacity(0.5),
                BlendMode.srcOver,
              ),
            ),
          ),
        ),
        /*  Padding(
          padding: const EdgeInsets.only(top: 125.0),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Image(image: image3),
                Image(image: image2),
                Image(image: image1),
              ],
            ),
          ),
        ), */
        Padding(
          padding: EdgeInsets.only( 
            top: (MediaQuery.of(context).size.height / 3.2),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
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
                  padding: const EdgeInsets.only(top: 20,left: 30, right: 30),
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