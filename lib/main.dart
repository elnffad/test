import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff075e54),
          primaryColorLight: Color(0xff08d261)),
      home: HomeScreen(),
    );
  }
}
