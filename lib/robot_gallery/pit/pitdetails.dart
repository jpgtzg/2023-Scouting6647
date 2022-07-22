import 'package:flutter/material.dart';
import 'package:scouting_app/newsystem/fetch/pit.dart';
import 'package:scouting_app/newsystem/fetch/newpitcontroller.dart';

class PitDetails extends StatefulWidget {
  late NewPitController newPitController = new NewPitController();
  String teamNum;
  String image;

  PitDetails(this.teamNum, this.image);

  @override
  State<PitDetails> createState() => _PitDetailsState();
}

class _PitDetailsState extends State<PitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<Pit?>(
          future: widget.newPitController.getById(int.parse(widget.teamNum)),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final pit = snapshot.data;

            if (pit != null) {
              return Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff4DAAE8).withOpacity(0.85),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 320,
                              width: 320,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    widget.image,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Team " + (pit.number ?? ''),
                                    style: const TextStyle(
                                      fontFamily: "Roboto Mono",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    (pit.name ?? ''),
                                    style: const TextStyle(
                                      fontFamily: "Roboto Mono",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
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
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0, left: 30),
                                child: Text(
                                  "Robot Info",
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
                              "Chassis: " + (pit.chassis ?? ''),
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontFamily: "Manrope",
                              ),
                            ),
                            Text(
                              "Wheel Type: " + (pit.wheelType ?? ''),
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
                    ),
                  ),
                ],
              );
            } else {
              return Text("No data");
            }
          },
        ),
      ),
    );
  }
}
