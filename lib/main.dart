import 'package:flutter/material.dart';

import 'appmanager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scouting App",
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: AppManager(),
    );
  }
}
