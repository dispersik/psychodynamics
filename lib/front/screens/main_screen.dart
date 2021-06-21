import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/front/screens/demo/demo_screen.dart';
import 'package:psychodynamics/front/screens/mood/mood_screen.dart';
import 'package:psychodynamics/front/screens/mood/new_mood/new_mood_screen.dart';
import 'package:psychodynamics/front/screens/tests/test_screen.dart';
import 'package:time_tracker/pages/new_record/new_record.dart';
import 'package:time_tracker/pages/record_listings/record_listing.dart';

import 'activities/activities_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          MoodScreen(),
          TestScreen(),
          ActivitiesScreen(),
          DemoScreen(),
          NewTimeTrackingRecordScreen(),
          TimeTrackingRecordsListing(),
        ],
      ),
    );
  }
}
