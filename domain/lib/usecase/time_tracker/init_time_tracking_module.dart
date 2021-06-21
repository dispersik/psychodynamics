import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

class InitTimeTrackingModule extends FutureUseCase<void, NoParams> {
  @override
  Future<void> execute(NoParams params) async {
    await TimeTrackerDataDi().init();
  }
}