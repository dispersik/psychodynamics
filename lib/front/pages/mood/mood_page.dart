import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:psychodynamics/front/pages/mood/mood_analytics_page.dart';
import 'package:psychodynamics/front/pages/mood/mood_tests_page.dart';
import 'package:psychodynamics/front/pages/mood/new_mood_page.dart';
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
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Text(
            'Mood',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox.expand(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppListTile(
                        title: 'Записать текущее состояние',
                        onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MoodAnalyticsPage(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppListTile(
                        title: 'Пройти тест',
                        onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MoodTestsPage(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppListTile(
                        title: 'Посмотреть аналитику',
                        onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MoodAnalyticsPage(),
                          ),
                        ),
                      ),
                    ),
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
