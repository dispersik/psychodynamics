import 'package:psychodynamics/back/entities/mappable_mixin.dart';

class TestInfo with Mappable {
  TestInfo({required this.testName, required this.duration});

  TestInfo.fromMap(Map<String, dynamic> map)
      : testName = map['testName'] as String,
        duration = map['duration'] as int;

  final String testName;
  final int duration;

  Map<String, Object> toMap() =>
      <String, Object>{
        'testName': testName,
        'duration': duration,
      };
}