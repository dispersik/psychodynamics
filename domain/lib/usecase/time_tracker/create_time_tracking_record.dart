import 'package:core/core.dart';
import '../../model/time_tracker/time_tracking_record.dart';
import '../../repository/time_tracking/time_tracking_repository.dart';

class CreateTimeTrackingRecordUseCase
    extends FutureUseCase<void, TimeTrackingRecord> {
  final TimeTrackingRepository _repository;

  CreateTimeTrackingRecordUseCase({
    required TimeTrackingRepository repository,
  }) : _repository = repository;

  @override
  Future<void> execute(TimeTrackingRecord params) async {
    return await _repository.createTimeTrackingRecord(params);
  }
}
