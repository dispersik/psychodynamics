import 'package:domain/domain.dart';
import 'package:domain/model/time_tracker/time_tracking_record.dart';

abstract class TimeTrackingRepository {
  Future<void> saveTimeTrackingStart(TimeTrackingStart start);

  Future<void> createTimeTrackingRecord(TimeTrackingRecord record);

  Future<List<TimeTrackingRecord>> getAllTimeTrackingRecords();
}
