import 'package:flutter/material.dart';
import 'package:scouting6647/system/match/match.dart';
import 'package:scouting6647/system/match/matchcontroller.dart';
import 'package:scouting6647/widgets/details/autodetails.dart';
import 'package:scouting6647/widgets/details/endgamedetails.dart';
import 'package:scouting6647/widgets/details/teleopdetails.dart';

/**
 * This code needs refactoring 
 */

class MatchDetails extends StatefulWidget {
  final MatchController matchController = new MatchController();
  final String teamNum;

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
                                  left: 15,
                                  right: 15,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xff757575),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                      ),
                                      child: Column(
                                        children: [
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
                                          SizedBox(
                                            height: 10,
                                          ),
                                          AutoDetails(
                                            title: "Autonomous",
                                            tarmacautoanswer:
                                                (match[index].tarmacauto ?? ''),
                                            lowerautoanswer:
                                                (match[index].lowerauto ?? ''),
                                            uppwerautoanswer:
                                                (match[index].upperauto ?? ''),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TeleopDetails(
                                            title: "Teleop",
                                            defendedanswer:
                                                (match[index].defended ?? ''),
                                            godefendedanswer:
                                                (match[index].gotdefended ??
                                                    ''),
                                            lowerteleopanswer:
                                                (match[index].lowerteleop ??
                                                    ''),
                                            upperteleopanswer:
                                                (match[index].upperteleop ??
                                                    ''),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          EndgameDetails(
                                            title: "Endgame & Extra",
                                            runganswer:
                                                (match[index].rung ?? ''),
                                            foulsanswer:
                                                (match[index].fouls ?? ''),
                                            techfoulsanswer:
                                                (match[index].techfouls ?? ''),
                                            scoreanswer:
                                                (match[index].alliancescore ??
                                                    ''),
                                            rpanswer: (match[index].rp ?? ''),
                                            wonAnswer: (match[index].won ?? ''),
                                            commentsAnswer:
                                                (match[index].comments ?? ''),
                                          ),
                                          SizedBox(
                                            height: 10,
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