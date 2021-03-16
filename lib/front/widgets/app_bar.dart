import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:psychodynamics/front/pages/home_page.dart';
import 'package:psychodynamics/front/pages/issue_page.dart';
import 'package:psychodynamics/front/pages/mood_page.dart';
import 'package:psychodynamics/front/pages/person_page.dart';
import 'package:psychodynamics/front/pages/task_page.dart';

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
            ),
            onPressed: ()=>Navigator.pushNamed(context, PersonPage.routeName),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: IconButton(
              onPressed: ()=> Navigator.pushNamed(context, MoodPage.routeName),
              icon: Icon(
                Icons.message,
                size: 30,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.home, size: 30,),
            onPressed: ()=>Navigator.pushNamed(context, HomePage.routeName),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: IconButton(
              icon: Icon(Icons.cloud, size: 30),
              onPressed: ()=>Navigator.pushNamed(context, IssuePage.routeName),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.star_border,
              size: 30,
            ),
            onPressed: ()=>Navigator.pushNamed(context, TaskPage.routeName),
          ),
        ],
      ),
    );
  }
}
