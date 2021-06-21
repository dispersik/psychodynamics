import 'package:core/core.dart';
import 'package:data/providers/time_tracker/local_storage/time_tracking_provider_impl.dart';
import 'package:data/repository/time_tracker.dart';
import 'package:domain/domain.dart';

class TimeTrackerDataDi {
  Future<void> init() async {
    if (!appLocator.isRegistered<TimeTrackingPrefsStorage>()) {
      appLocator.registerSingleton<TimeTrackingPrefsStorage>(
        TimeTrackingPrefsStorage(prefs: appLocator.get()),
      );
    }
    if (!appLocator.isRegistered<TimeTrackingRepository>()) {
      appLocator.registerSingleton<TimeTrackingRepository>(
        TimeTrackingRepositoryImpl(
          prefsStorage: appLocator.get(),
        ),
      );
    }
  }

  void dispose() {
    throw UnimplementedError();
  }
}
