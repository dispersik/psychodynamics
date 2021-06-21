import 'package:core/core.dart';

class TimeTrackingEnd extends Equatable {
  final DateTime dateTime;

  const TimeTrackingEnd({
    required this.dateTime,
  });

  @override
  List<Object> get props => <Object>[
        dateTime,
      ];
}
