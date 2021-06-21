import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeTrackingRecordTile extends StatelessWidget {
  final TimeTrackingRecord record;

  const TimeTrackingRecordTile({
    required this.record,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(.4),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.topLeft,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Activity Name',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(record.activity.name),
          Text(
            'Duration In Hours',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(record.duration.inHours.toString()),
        ],
      ),
    );
  }
}
