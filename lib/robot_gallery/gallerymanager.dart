import 'package:flutter/material.dart';
import 'package:scouting_app/system/fetch/robot_list.dart';

class RobotGallery extends StatefulWidget {
  RobotGallery({Key? key}) : super(key: key);

  @override
  State<RobotGallery> createState() => _RobotGalleryState();
}

class _RobotGalleryState extends State<RobotGallery> {
  @override
  Widget build(BuildContext context) {
    return RobotList();
  }
}