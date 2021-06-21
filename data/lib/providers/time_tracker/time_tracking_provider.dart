import 'package:domain/domain.dart';

abstract class TimeTrackingProvider {
  Future<void> saveTimeTrackingStart(TimeTrackingStart start);

  Future<void> createTimeTrackingRecord(TimeTrackingRecord record);

  Future<List<TimeTrackingRecord>> getAllTimeTrackingRecords();
}
