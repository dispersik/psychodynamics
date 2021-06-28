import 'dart:convert';

import 'package:domain/domain.dart';

extension TimeTrackingRecordMapper on TimeTrackingRecord {
  static const String START_DATETIME_KEY = 'start_dt';
  static const String END_DATETIME_KEY = 'end_dt';
  static const String ID_KEY = 'id';
  static const String ACTIVITY_NAME_KEY = 'activity_name';
  static const String GROUP_NAME_KEY = 'group_name';

  String toJsonWithId(int id) {
    final Map<String, dynamic> map = <String, dynamic>{
      ACTIVITY_NAME_KEY: activityName,
      START_DATETIME_KEY: start.dateTime.toLocal().toString(),
      END_DATETIME_KEY: end.dateTime.toLocal().toString(),
      GROUP_NAME_KEY: start.activity.groupName,
      ID_KEY: id,
    };
    return jsonEncode(map);
  }

  static TimeTrackingRecord fromMapToTimeTrackingRecord(
      Map<String, dynamic> map) {
    return TimeTrackingRecord(
      start: TimeTrackingStart(
        dateTime: DateTime.parse(map[START_DATETIME_KEY] as String),
        activity: TimeTrackingActivity(
          name: map[ACTIVITY_NAME_KEY] as String,
          groupName: map[GROUP_NAME_KEY] as String?,
        ),
      ),
      end: TimeTrackingEnd(
        dateTime: DateTime.parse(map[END_DATETIME_KEY] as String),
      ),
    );
  }
}
