import 'package:domain/usecase/time_tracker/di.dart';

class DomainDi {
  Future<void> init() async {
    await TimeTrackerDi().init();
  }
}