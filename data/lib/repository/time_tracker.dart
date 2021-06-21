import 'package:data/providers/time_tracker/local_storage/time_tracking_provider_impl.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';

class TimeTrackingRepositoryImpl extends TimeTrackingRepository {
  @visibleForTesting
  final TimeTrackingPrefsStorage prefsStorage;

  TimeTrackingRepositoryImpl({
    required this.prefsStorage,
  });

  @override
  Future<void> createTimeTrackingRecord(TimeTrackingRecord record) async {
    await prefsStorage.createTimeTrackingRecord(record);
  }

  @override
  Future<List<TimeTrackingRecord>> getAllTimeTrackingRecords() async {
   return await prefsStorage.getAllTimeTrackingRecords();
  }

  @override
  Future<void> saveTimeTrackingStart(TimeTrackingStart start) {
    throw UnimplementedError();
  }
}
