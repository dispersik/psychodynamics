import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psychodynamics/back/data/utilities/bdi_ru_parser.dart';
import 'package:psychodynamics/front/screens/mood/new_mood/new_mood_screen.dart';

class MoodScreen extends StatefulWidget {
  @override
  _MoodScreenState createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mood",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => NewMoodScreen(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(color: Colors.black26)),
                child: Center(child: Text('Create mood record')),
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.greenAccent[100],
    );
  }
}
