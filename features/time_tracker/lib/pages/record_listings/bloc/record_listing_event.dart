import 'package:core/core.dart';

abstract class RecordListingEvent extends Equatable {
  const RecordListingEvent();
}

class GetAllRecords extends RecordListingEvent {
  const GetAllRecords();

  @override
  List<Object?> get props => <Object?>[];
}
