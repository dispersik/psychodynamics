import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:psychodynamics/front/pages/new_mood_page.dart';
import 'package:psychodynamics/front/ui_helper.dart';
import 'package:psychodynamics/front/widgets/app_bar.dart';
import 'package:psychodynamics/front/widgets/mood_widget.dart';

class MoodPage extends StatefulWidget {
  static const String routeName = '/moods';

  _MoodPageState createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox.expand(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MoodListTile(title: '1st record'),
                  ]),
            ),
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => Navigator.pushNamed(context, NewMoodPage.routeName),
        ),
        bottomNavigationBar: CustomAppBar());
  }
}
