import 'package:core/core.dart';
import 'package:domain/model/emotion/emotion.dart';
import 'package:domain/model/influence/influence.dart';
import 'package:domain/model/time_tracker/time_tracking_activity.dart';

class TimeTrackingStart extends Equatable {
  final DateTime dateTime;
  final TimeTrackingActivity activity;

  final List<Emotion>? emotions;
  final List<Influence>? influences;
  final double? estimatedResult;
  final double? estimatedDuration;

  const TimeTrackingStart({
    required this.activity,
    required this.dateTime,
    this.influences,
    this.estimatedResult,
    this.estimatedDuration,
    this.emotions,
  });

  @override
  List<Object?> get props => <Object?>[
        activity,
        dateTime,
        influences,
        estimatedResult,
        estimatedDuration,
        emotions,
      ];
}
