import 'package:core/core.dart';

abstract class NewRecordEvent extends Equatable {
  const NewRecordEvent();
}

class Save extends NewRecordEvent {
  final String activityName;
  final String durationInHours;

  const Save({
    required this.durationInHours,
    required this.activityName,
  });

  @override
  List<Object?> get props =>
      <Object>[
        activityName,
        durationInHours,
      ];
}
