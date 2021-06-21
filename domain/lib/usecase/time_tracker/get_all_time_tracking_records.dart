import 'package:core/core.dart';

import '../../model/time_tracker/time_tracking_record.dart';
import '../../repository/time_tracking/time_tracking_repository.dart';

class GetAllTimeTrackingRecords
    extends FutureUseCase<List<TimeTrackingRecord>, NoParams> {
  final TimeTrackingRepository _repository;

  GetAllTimeTrackingRecords({
    required TimeTrackingRepository repository,
  }) : _repository = repository;

  @override
  Future<List<TimeTrackingRecord>> execute(NoParams params) async {
    return await _repository.getAllTimeTrackingRecords();
  }
}
