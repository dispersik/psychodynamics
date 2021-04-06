import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/front/screens/mood/mood_screen.dart';
import 'package:psychodynamics/front/screens/tests/test_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          MoodScreen(),
          TestScreen(),
        ],
      )
    );
  }
}
