import 'package:psychodynamics/back/data/utilities/bdi_ru_parser.dart';
import 'package:psychodynamics/back/entities/question.dart';
import 'package:psychodynamics/back/entities/test.dart';

enum LocalTests {
  BeckDepressionScaleRu,
  ZungDepressionScaleRu,
}

class LocalTestsRepository {
  Future<List<Test>> loadTests() async {
    final List<Test> tests = <Test>[];
    LocalTests.values.forEach((LocalTests test) async {
      tests.add(await loadTest(test));
    });
    tests.sort(
          (Test a, Test b) => a.name.compareTo(b.name),
    );
    return tests;
  }

  Future<Test> loadTest(LocalTests test) async {
    switch (test) {
      case LocalTests.BeckDepressionScaleRu:
        final BDIRUParser parser = BDIRUParser();
        return Test(
          questions: await parser.loadQuestions(),
          estimatedCompletionTimeInMinutes: 15,
          name: 'Шкала депрессии Бека',
        );
      case LocalTests.ZungDepressionScaleRu:
        final BDIRUParser parser = BDIRUParser();
        return Test(
          name: 'Шкала депрессии Занга',
          questions: <Question>[...(await parser.loadQuestions())
            ..removeLast()
          ],
          estimatedCompletionTimeInMinutes: 20,
        );
    }
  }
}
