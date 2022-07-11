import 'package:flutter/material.dart';
import 'package:scouting_app/system/fetch/fetch_controller.dart';
import 'package:scouting_app/system/fetch/fetch_form.dart';

class RobotList extends StatefulWidget {
  RobotList({Key? key}) : super(key: key);

  @override
  State<RobotList> createState() => _RobotListState();
}

class _RobotListState extends State<RobotList> {

  List<FetchForm> feedbackItems = <FetchForm>[];

  @override
  void initState() {
    super.initState();

    FetchRobotController().getFeedbackList().then((feedbackItems) {
      setState(() {
        this.feedbackItems = feedbackItems;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Robots"),
      ),
      body: ListView.builder(
        itemCount: feedbackItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.person),
                Expanded(
                  child: Text(
                      "${feedbackItems[index].number} ${feedbackItems[index].name}"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}