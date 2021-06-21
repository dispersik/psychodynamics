import 'package:flutter/material.dart';
import 'package:psychodynamics/front/screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
      ),
      home: MainScreen(),
    );
  }
}
