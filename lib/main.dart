import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psychodynamics/front/pages/mood_page.dart';
import 'package:psychodynamics/front/ui_helper.dart';
import 'front/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var routes = <String, WidgetBuilder> {
    HomePage.routeName: (BuildContext context) => HomePage(),
    MoodPage.routeName: (BuildContext context) => MoodPage(),
  };

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle( // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));
    return MaterialApp(
      title: 'Psychodynamics',
      theme: ThemeData(
        backgroundColor: kBackgroundColor,
        primarySwatch: kPrimarySwatch,
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}
