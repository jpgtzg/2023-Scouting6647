import 'package:flutter/material.dart';
import 'package:scouting6647/system/notes/notes.dart';
import 'package:scouting6647/system/notes/notescontroller.dart';

class NotesDetails extends StatefulWidget {
  final NotesController notesController = new NotesController();
  final String teamNum;

  NotesDetails(
    this.teamNum,
  );

  @override
  State<NotesDetails> createState() => _NotesDetailsState();
}

class _NotesDetailsState extends State<NotesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff151515),
        child: FutureBuilder<List<Notes>?>(
          future: widget.notesController.getAllByID(int.parse(widget.teamNum)),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final notes = snapshot.data!;

            if (notes.length != 0) {
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
                                  "Team " + (notes[0].number ?? ''),
                                  style: const TextStyle(
                                    fontFamily: "Roboto Mono",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  (notes[0].name ?? ''),
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
                          Expanded(
                            child: ListView.builder(
                              itemCount: notes.length,
                              itemBuilder: (context, index) => Container(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 25,
                                        left: 15,
                                      ),
                                      height: 180,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        // color: Color(0xff1E91D6),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 2,
                                            child: Text(
                                              "Notes " + (index + 1).toString(),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 2,
                                            top: 40,
                                            child: Text(
                                              (notes[index].notes ?? ''),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
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
