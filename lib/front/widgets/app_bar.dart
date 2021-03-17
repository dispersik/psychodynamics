import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:psychodynamics/back/helper.dart';
import 'package:psychodynamics/front/pages/home_page.dart';
import 'package:psychodynamics/front/pages/issue_page.dart';
import 'package:psychodynamics/front/pages/mood_page.dart';
import 'package:psychodynamics/front/pages/person_page.dart';
import 'package:psychodynamics/front/pages/task_page.dart';
import 'package:psychodynamics/front/widgets/fade_route.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.person,
              size: 30,
              color: _getColor(PersonPage.routeName),
            ),
            onPressed: () {
              activePage = PersonPage.routeName;
              Navigator.push(context, FadeRoute(page: PersonPage()));
            }),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: IconButton(
                icon: Icon(
                  Icons.message,
                  size: 30,
                  color: _getColor(MoodPage.routeName),
                ),
                onPressed: () {
                  activePage = MoodPage.routeName;
                  Navigator.push(context, FadeRoute(page: MoodPage()));
                }),
          ),
          IconButton(
            icon: Icon(
              Icons.home,
              size: 30,
              color: _getColor(HomePage.routeName),
            ),
            onPressed: () {
              activePage = HomePage.routeName;
              Navigator.push(context, FadeRoute(page: HomePage()));
            }),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: IconButton(
              icon: Icon(Icons.cloud, size: 30),
              color: _getColor(IssuePage.routeName),
              onPressed: () {
                activePage = IssuePage.routeName;
                Navigator.push(context, FadeRoute(page: IssuePage()));
              }),
          ),
          IconButton(
            icon: Icon(
              Icons.star_border,
              size: 30,
              color: _getColor(TaskPage.routeName),
            ),
            onPressed: () {
              activePage = TaskPage.routeName;
              Navigator.push(context, FadeRoute(page: TaskPage()));
            }),
        ],
      ),
    );
  }

  Color _getColor(String routeName) =>
      (routeName == activePage) ? Colors.white : Colors.black;
}
