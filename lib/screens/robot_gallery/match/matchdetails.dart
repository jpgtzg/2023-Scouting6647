import 'package:flutter/material.dart';
import 'package:scouting_app/system/match/match.dart';
import 'package:scouting_app/system/match/matchcontroller.dart';

/**
 * This code needs refactoring 
 */

class MatchDetails extends StatefulWidget {
  late MatchController matchController = new MatchController();
  String teamNum;

  MatchDetails(this.teamNum);

  @override
  State<MatchDetails> createState() => _MatchDetailsState();
}

class _MatchDetailsState extends State<MatchDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff151515),
        child: FutureBuilder<List<Match>?>(
          future:
              widget.matchController.getAllByID(int.tryParse(widget.teamNum)!),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final match = snapshot.data!;

            if (match.length != 0) {
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
                                  "Team " + (match[0].number ?? ''),
                                  style: const TextStyle(
                                    fontFamily: "Roboto Mono",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  (match[0].name ?? ''),
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
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: match.length,
                              itemBuilder: (context, index) => Container(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            (match[index].alliance ?? '')
                                                    .toUpperCase() +
                                                " ALLIANCE",
                                            style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                "Match " +
                                                    (match[index].matchnum ??
                                                        ''),
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                              Text(
                                                "   Type: " +
                                                    (match[index].matchtype ??
                                                        ''),
                                                overflow: TextOverflow.visible,
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0, right: 30),
                                            child: const SizedBox(
                                              // width: 320,
                                              child: Divider(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Autonomous information: ",
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Robot left tarmac: " +
                                                (match[index].tarmacauto ?? ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                "Lower score: " +
                                                    (match[index].lowerauto ??
                                                        ''),
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontSize: 18,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                              Text(
                                                " Upper score: " +
                                                    (match[index].upperauto ??
                                                        ''),
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontSize: 18,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Teleop: ",
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                "Lower score: " +
                                                    (match[index].lowerteleop ??
                                                        ''),
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontSize: 18,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                              Text(
                                                " Upper score: " +
                                                    (match[index].upperteleop ??
                                                        ''),
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontSize: 18,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Robot defended other robots: " +
                                                (match[index].defended ?? ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Robot got defended?: " +
                                                (match[index].gotdefended ??
                                                    ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Endgame: ",
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Rung climbed: " +
                                                (match[index].rung ?? ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Fouls: ",
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                "Fouls: " +
                                                    (match[index].fouls ?? ''),
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontSize: 18,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                              Text(
                                                "Tech fouls: " +
                                                    (match[index].techfouls ??
                                                        ''),
                                                style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  fontSize: 18,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Results: ",
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Score: " +
                                                (match[index].alliancescore ??
                                                    ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Ranking points: " +
                                                (match[index].rp ?? ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Won?: " + (match[index].won ?? ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Extra: ",
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "Comments: " +
                                                (match[index].comments ?? ''),
                                            style: TextStyle(
                                              fontFamily: "Manrope",
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.visible,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0, right: 30),
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
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
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
