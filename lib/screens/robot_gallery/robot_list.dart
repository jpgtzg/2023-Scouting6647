import 'package:flutter/material.dart';
import 'package:scouting6647/system/list/list.dart';
import 'package:scouting6647/system/list/listcontroller.dart';
import 'package:scouting6647/screens/robot_gallery/robot_details.dart';

class ListGallery extends StatefulWidget {
  final ListController listController = new ListController();

  ListGallery({Key? key}) : super(key: key);

  @override
  State<ListGallery> createState() => _ListGalleryState();
}

class _ListGalleryState extends State<ListGallery> {
  @override
  Widget build(BuildContext context) {
    AssetImage image3 = AssetImage("assets/images/background/back1.jpeg");
    precacheImage(image3, context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff151515),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55.0, left: 40, right: 10),
                child: Row(
                  children: [
                    Text(
                      "Robot List",
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffFFFFFF),
                        fontSize: 42,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: FutureBuilder<List<RobotList>?>(
                    future: widget.listController.getAll(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      final robotList = snapshot.data;

                      return ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: false,
                        itemCount: robotList!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RobotCard(
                              robotList: robotList, robotIndex: index);
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class RobotCard extends StatelessWidget {
  List<RobotList> robotList = <RobotList>[];
  final int robotIndex;

  RobotCard({Key? key, required this.robotList, required this.robotIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RobotDetails(
                  "${robotList[robotIndex].number}",
                  "${robotList[robotIndex].image}",
                ),
              ),
            );
          },
          child: Container(
            height: 320,
            width: 320,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "${robotList[robotIndex].image}",
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.lightBlue.withOpacity(0.8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10),
                    child: Column(
                      children: [
                        Text(
                          "${robotList[robotIndex].number}\n${robotList[robotIndex].name}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontFamily: "Roboto Mono",
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
