import 'package:flutter/services.dart';
import 'package:psychodynamics/back/entities/question.dart';

class BDIRUParser {
  Future<List<Question>> loadQuestions() async {
    final result = <Question>[];
    final file = await rootBundle
        .loadString('assets/tests/beck_depression_scale_ru.txt');
    file.split('\n\n').forEach((element) {
      List<String> lines = element.split('\n');
      result.add(
        Question(
          title: lines[0],
          options: lines
              .getRange(1, 5)
              .map(
                (String line) => Option(
                  text: line.substring(2),
                  value: int.parse(line[0]),
                ),
              )
              .toList(),
        ),
      );
    });
    return result;
  }
}
