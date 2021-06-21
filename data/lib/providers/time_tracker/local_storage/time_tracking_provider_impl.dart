import 'dart:convert';

import 'package:data/providers/time_tracker/time_tracking_provider.dart';
import 'package:domain/model/time_tracker/time_tracking_record.dart';
import 'package:domain/model/time_tracker/time_tracking_start.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'time_tracking_record_mapper.dart';

class TimeTrackingPrefsStorage extends TimeTrackingProvider {
  final SharedPreferences _prefs;

  static const String LAST_RECORD_ID_KEY = 'LAST_RECORD_ID';
  static const String TIME_TRACKING_RECORD_KEY_PREFIX = 'TIME_TRACKING_ID_';

  TimeTrackingPrefsStorage({
    required SharedPreferences prefs,
  }) : _prefs = prefs;

  @visibleForTesting
  int get lastTimeTrackingRecordId {
    return _prefs.getInt(LAST_RECORD_ID_KEY) ?? 0;
  }

  @visibleForTesting
  Future<void> setLastTimeTrackingRecordId(int id) async {
    await _prefs.setInt(LAST_RECORD_ID_KEY, id);
  }

  @override
  Future<void> createTimeTrackingRecord(TimeTrackingRecord record) async {
    final int recordId = lastTimeTrackingRecordId + 1;
    await _prefs.setString(
      TIME_TRACKING_RECORD_KEY_PREFIX + recordId.toString(),
      record.toJsonWithId(recordId),
    );
    await setLastTimeTrackingRecordId(recordId);
  }

  @override
  Future<List<TimeTrackingRecord>> getAllTimeTrackingRecords() async {
    final List<TimeTrackingRecord> records = <TimeTrackingRecord>[];
    for (int i = 0; i <= lastTimeTrackingRecordId; i++) {
      final String? record = _prefs.getString(
        TIME_TRACKING_RECORD_KEY_PREFIX + i.toString(),
      );
      if (record != null) {
        records.add(
          TimeTrackingRecordMapper.fromMapToTimeTrackingRecord(
            jsonDecode(record) as Map<String, dynamic>,
          ),
        );
      }
    }
    return records;
  }

  @override
  Future<void> saveTimeTrackingStart(TimeTrackingStart start) {
    throw UnimplementedError();
  }
}
