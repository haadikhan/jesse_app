import 'package:flutter/material.dart';

import 'package:jesse_app/user_interface/get_started_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: GetStartedScreen(),
    );
  }
}
