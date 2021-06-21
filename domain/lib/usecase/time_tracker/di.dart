import 'package:core/core.dart';
import 'package:domain/domain.dart';

class TimeTrackerDi {
  const TimeTrackerDi();

  Future<void> init() async {
    if (!appLocator.isRegistered<TimeTrackingRepository>()) {
      await InitTimeTrackingModule().execute(NoParams());
    }
    if (!appLocator.isRegistered<CreateTimeTrackingRecordUseCase>()) {
      appLocator.registerFactory<CreateTimeTrackingRecordUseCase>(
            () => CreateTimeTrackingRecordUseCase(repository: appLocator.get()),
      );
    }
    if (!appLocator.isRegistered<GetAllTimeTrackingRecords>()) {
      appLocator.registerFactory<GetAllTimeTrackingRecords>(
            () => GetAllTimeTrackingRecords(repository: appLocator.get()),
      );
    }
  }
}
