import 'package:flutter/material.dart';
import 'package:psychodynamics/back/data/utilities/bdi_ru_parser.dart';
import 'package:psychodynamics/back/entities/test.dart';

enum LocalTests {
  BeckDepressionScaleRu,
}

class LocalTestsRepository {
  Future<List<Test>> loadTests() async {
    final List<Test> tests = <Test>[];
    LocalTests.values.forEach((test) async {
      tests.add(await loadTest(test));
    });
    return tests;
  }

  Future<Test> loadTest(LocalTests test) async {
    switch (test) {
      case LocalTests.BeckDepressionScaleRu:
        final BDIRUParser parser = BDIRUParser();
        return Test(
          questions: await parser.loadQuestions(),
          estimatedCompletionTimeInMinutes: 15,
          name: 'Beck Depression Scale',
        );
    }
  }
}
