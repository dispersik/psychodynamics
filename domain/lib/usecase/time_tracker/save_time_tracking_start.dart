import 'package:core/core.dart';
import 'package:domain/domain.dart';

class SaveTimeTrackingStartUseCase
    extends FutureUseCase<void, TimeTrackingStart> {
  final TimeTrackingRepository _repository;

  SaveTimeTrackingStartUseCase({
    required TimeTrackingRepository repository,
  }) : _repository = repository;

  @override
  Future<void> execute(TimeTrackingStart params) async {
    return await _repository.saveTimeTrackingStart(params);
  }
}
