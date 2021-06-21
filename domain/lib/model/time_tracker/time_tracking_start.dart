import 'package:core/core.dart';
import 'package:domain/model/time_tracker/time_tracking_activity.dart';

class TimeTrackingStart extends Equatable {
  final DateTime dateTime;
  final TimeTrackingActivity activity;

  const TimeTrackingStart({
    required this.activity,
    required this.dateTime,
  });

  @override
  List<Object> get props => <Object>[
        activity,
        dateTime,
      ];
}
