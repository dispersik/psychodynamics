import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/entities/mood.dart';

class MoodTile extends StatelessWidget {
  MoodTile({
    required this.mood,
    required this.onTap,
  });

  final Mood mood;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (mood.title != null) ? mood.title! : 'Mood Record',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  color: Colors.black26,
                  height: 2,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.timelapse,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(mood.dateTime.toLocal().toString()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.article,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Overall: ${(mood.overallFeeling * 100).round()}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
