import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:psychodynamics/front/ui_helper.dart';

class MoodListTile extends StatelessWidget {
  MoodListTile({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primarySwatch,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ]),
      ),
    );
  }
}

class AppListTile extends StatelessWidget {
  AppListTile({@required this.title, this.onTap, this.icon});

  final String title;
  final Function onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: Color(0xFF5CCCCC),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
