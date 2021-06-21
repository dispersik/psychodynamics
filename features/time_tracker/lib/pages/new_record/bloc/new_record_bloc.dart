import 'package:core/core.dart';
import 'package:domain/domain.dart';

import 'new_record_event.dart';
import 'new_record_state.dart';

class NewRecordBloc extends Bloc<NewRecordEvent, NewRecordState> {
  final CreateTimeTrackingRecordUseCase createTimeTrackingRecordUseCase =
      appLocator.get();

  NewRecordBloc() : super(NewRecordContent());

  @override
  Stream<NewRecordState> mapEventToState(NewRecordEvent event) async* {
    if (event is Save) {
      final TimeTrackingActivity activity = TimeTrackingActivity(
        groupName: '',
        name: event.activityName,
      );
      final int durationInHours = int.tryParse(event.durationInHours) ?? -1;
      await createTimeTrackingRecordUseCase.execute(
        TimeTrackingRecord(
          start: TimeTrackingStart(
            dateTime: DateTime.now().subtract(
              Duration(hours: durationInHours),
            ),
            activity: activity,
          ),
          end: TimeTrackingEnd(
            dateTime: DateTime.now(),
          ),
        ),
      );
    }
  }
}
