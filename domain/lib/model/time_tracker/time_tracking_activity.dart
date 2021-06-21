import 'package:core/core.dart';

class TimeTrackingActivity extends Equatable {
  final String name;
  final String? groupName;

  const TimeTrackingActivity({
    required this.name,
    this.groupName,
  });

  @override
  List<Object?> get props => <Object?>[
        name,
        groupName,
      ];
}
