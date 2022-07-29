import 'package:flutter/material.dart';
import 'package:scouting_app/newsystem/fetch/match/match.dart';
import 'package:scouting_app/newsystem/fetch/match/newmatchcontroller.dart';

/**
 * This code needs refactoring 
 */

class MatchDetails extends StatefulWidget {
  late NewMatchController newMatchController = new NewMatchController();
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
        child: FutureBuilder<List<Match>?>(
          future: widget.newMatchController
              .getAllByID(int.tryParse(widget.teamNum)!),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final match = snapshot.data!;

            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff4DAAE8).withOpacity(0.85),
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Team " + (match[0].number ?? ''),
                          style: TextStyle(
                            fontFamily: "Roboto Mono",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          (match[0].name ?? ''),
                          style: TextStyle(
                            fontFamily: "Roboto Mono",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30),
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
                                    decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(0.85),
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
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Match: " +
                                                  (match[index].matchnum ?? ''),
                                              style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "Match type: " +
                                                  (match[index].matchtype ??
                                                      ''),
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
                                        Text(
                                          "Left tarmac?: " +
                                              (match[index].tarmacauto ?? ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Autonomous: ",
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Lower score: " +
                                                  (match[index].lowerauto ??
                                                      ''),
                                              style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              " Upper score: " +
                                                  (match[index].upperauto ??
                                                      ''),
                                              style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Teleop: ",
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Lower score: " +
                                                  (match[index].lowerteleop ??
                                                      ''),
                                              style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              " Upper score: " +
                                                  (match[index].upperteleop ??
                                                      ''),
                                              style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Robot defended?: " +
                                              (match[index].defended ?? ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Robot got defended?: " +
                                              (match[index].gotdefended ?? ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Endgame: ",
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          "Rung climbed: " +
                                              (match[index].rung ?? ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Fouls: ",
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Fouls: " +
                                                  (match[index].fouls ?? ''),
                                              style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "Tech fouls: " +
                                                  (match[index].techfouls ??
                                                      ''),
                                              style: TextStyle(
                                                fontFamily: "Manrope",
                                                fontSize: 18,
                                              ),
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
                                        ),
                                        Text(
                                          "Score: " +
                                              (match[index].alliancescore ??
                                                  ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Ranking points: " +
                                              (match[index].rp ?? ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Won?: " + (match[index].won ?? ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Extra: ",
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          "Comments: " +
                                              (match[index].comments ?? ''),
                                          style: TextStyle(
                                            fontFamily: "Manrope",
                                            fontSize: 18,
                                          ),
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
