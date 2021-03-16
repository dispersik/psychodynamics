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
