import 'package:flutter/material.dart';
import 'package:scouting_app/newsystem/fetch/pit.dart';
import 'package:scouting_app/newsystem/fetch/newpitcontroller.dart';

class PitDetails extends StatefulWidget {
  late NewPitController newPitController = new NewPitController();

  PitDetails();

  @override
  State<PitDetails> createState() => _PitDetailsState();
}

class _PitDetailsState extends State<PitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Pit>>(
        future: widget.newPitController.getAll(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final pit = snapshot.data;

          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView.builder(
              itemCount: pit == null ? 2 : pit.length,
              itemBuilder: (context, index) => pit == null
                  ? Text("No data given")
                  : Text("Number: " +
                      (pit[index].number ?? '') +
                      " Name: " +
                      (pit[index].name ?? '') +
                      " Chassis: " +
                      (pit[index].chassis ?? '') +
                      " Wheel Type: " +
                      (pit[index].wheelType ?? '')),
            ),
          );
        },
      ),
    );
  }
}
