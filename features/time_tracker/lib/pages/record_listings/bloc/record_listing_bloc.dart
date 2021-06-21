import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:time_tracker/pages/record_listings/bloc/record_listing_event.dart';
import 'package:time_tracker/pages/record_listings/bloc/record_listing_state.dart';

class RecordListingBloc extends Bloc<RecordListingEvent, RecordListingState> {
  @visibleForTesting
  final TimeTrackingRepository repository = appLocator.get();
  final List<TimeTrackingRecord> records = <TimeTrackingRecord>[];

  RecordListingBloc() : super(RecordListingLoading()) {
    add(GetAllRecords());
  }

  @override
  Stream<RecordListingState> mapEventToState(RecordListingEvent event) async* {
    if (event is GetAllRecords) {
      yield RecordListingLoading();
      final List<TimeTrackingRecord> newRecords =
          await repository.getAllTimeTrackingRecords();
      records..clear()..addAll(newRecords);
      yield RecordListingContent(records: records);
    }
  }
}
