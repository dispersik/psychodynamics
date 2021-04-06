import 'package:psychodynamics/back/entities/question.dart';

class Test {
  Test(
      {required this.name,
      required this.questions,
      required this.estimatedCompletionTimeInMinutes});

  final List<Question> questions;
  final String name;
  final int estimatedCompletionTimeInMinutes;
  int get numberOfQuestions => questions.length;
}
