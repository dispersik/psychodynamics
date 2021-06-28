import 'package:core/core.dart';
import 'package:domain/model/time_tracker/time_tracking_activity.dart';
import 'package:domain/model/time_tracker/time_tracking_end.dart';
import 'package:domain/model/time_tracker/time_tracking_start.dart';

class TimeTrackingRecord extends Equatable {
  final TimeTrackingStart start;
  final TimeTrackingEnd end;

  const TimeTrackingRecord({
    required this.start,
    required this.end,
  });

  Duration get duration => end.dateTime.difference(start.dateTime);
  String get activityName => start.activity.name;

  @override
  List<Object> get props => <Object>[
        start,
        end,
      ];
}
