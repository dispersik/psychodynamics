import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/mood_record.dart';

class MoodRecordTile extends StatelessWidget {
  MoodRecordTile(this.mood);

  final MoodRecord mood;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(mood.textForTile),

          ],
        ),
      ),
    );
  }
}