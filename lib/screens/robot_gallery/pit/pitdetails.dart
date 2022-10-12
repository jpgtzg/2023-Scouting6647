import 'package:flutter/material.dart';
import 'package:scouting_app/system/pit/pit.dart';
import 'package:scouting_app/system/pit/pitcontroller.dart';

class PitDetails extends StatefulWidget {
  late PitController pitController = new PitController();
  String teamNum;

  PitDetails(this.teamNum,);

  @override
  State<PitDetails> createState() => _PitDetailsState();
}

class _PitDetailsState extends State<PitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff151515),
        child: FutureBuilder<List<Pit>?>(
          future: widget.pitController.getAllByID(int.parse(widget.teamNum)),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final pit = snapshot.data!;

            if (pit.length != 0) {
              return Column(
                children: [
                  
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff151515),
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Team " + (pit[0].number ?? ''),
                                  style: const TextStyle(
                                    fontFamily: "Roboto Mono",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  (pit[0].name ?? ''),
                                  style: const TextStyle(
                                    fontFamily: "Roboto Mono",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  // ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30),
                            child: const SizedBox(
                              // width: 320,
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: pit.length,
                              itemBuilder: (context, index) => Container(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10.0, left: 30),
                                              child: Text(
                                                "Response #" +
                                                    ((index + 1).toString()),
                                                style: const TextStyle(
                                                  fontFamily: "Space Grotesk",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Chassis: " +
                                                (pit[index].chassis ?? ''),
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black87,
                                              fontFamily: "Manrope",
                                            ),
                                          ),
                                          Text(
                                            "Wheel Type: " +
                                                (pit[index].wheelType ?? ''),
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black87,
                                              fontFamily: "Manrope",
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
