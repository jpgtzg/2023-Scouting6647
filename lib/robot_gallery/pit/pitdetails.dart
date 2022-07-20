import 'package:flutter/material.dart';
import 'package:scouting_app/newsystem/fetch/pit.dart';
import 'package:scouting_app/newsystem/fetch/newpitcontroller.dart';

class PitDetails extends StatefulWidget {
  late NewPitController newPitController = new NewPitController();
  String teamNum;
  PitDetails(this.teamNum);

  @override
  State<PitDetails> createState() => _PitDetailsState();
}

class _PitDetailsState extends State<PitDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            return Text(
              "Number: " +
                  (pit.number ?? '') +
                  " Name: " +
                  (pit.name ?? '') +
                  " Chassis: " +
                  (pit.chassis ?? '') +
                  " Wheel Type: " +
                  (pit.wheelType ?? ''),
            );
          } else {
            return Text("No data");
          }
        },
      ),
    );
  }
}


/* FutureBuilder<List<Pit>>(
        future: widget.newPitController.getAll(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final pit = snapshot.data;

          return Padding(
            padding: const EdgeInsets.only(right : 24.0, left : 24.0),
            child: ListView.builder(
              itemCount: pit == null ? 2 : pit.length ,
              itemBuilder: (context, index) => pit == null
                  ? Text("No data given") //Just null check
                  : Container(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        "Number: " +
                            (pit[index].number ?? '') +
                            " Name: " +
                            (pit[index].name ?? '') +
                            " Chassis: " +
                            (pit[index].chassis ?? '') +
                            " Wheel Type: " +
                            (pit[index].wheelType ?? ''),
                      ),
                    ),
            ),
          );
        },
      ), */

/* FutureBuilder<Pit?>(
        future: widget.newPitController.getById(6647),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final pit = snapshot.data;

          if(pit != null){
            return Text(pit.name.toString());
          }

          else{
            return Text("A");
          }
        },
      ), */