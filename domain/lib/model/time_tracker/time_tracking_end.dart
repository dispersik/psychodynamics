import 'package:core/core.dart';
import 'package:domain/model/emotion/emotion.dart';

class TimeTrackingEnd extends Equatable {
  final DateTime dateTime;
  final double? result;
  final List<Emotion>? emotions;

  const TimeTrackingEnd({
    required this.dateTime,
    this.result,
    this.emotions,
  });

  @override
  List<Object?> get props => <Object?>[
        dateTime,
        result,
        emotions,
      ];
}
