import 'package:psychodynamics/back/entities/test_entry.dart';

class TestEntries {
  TestEntries({
    required this.entries,
    required this.dateTime,
    required this.numberOfQuestions,
  });

  final List<TestEntry> entries;
  final DateTime dateTime;
  final int numberOfQuestions;

  bool isInEntries(int index) =>
      entries.where((entry) => entry.index == index).toList().isNotEmpty;
  bool isNotInEntries(int index) => !isInEntries(index);

  bool get isCompleted => entries.length==numberOfQuestions;
}
