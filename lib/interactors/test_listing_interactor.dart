import 'package:psychodynamics/back/data/repositories/local_tests_repository.dart';
import 'package:psychodynamics/back/entities/test.dart';

class TestListingInteractor {
  final LocalTestsRepository _localRepository = LocalTestsRepository();

  Future<List<Test>> loadTests() async {
    return await _localRepository.loadTests();
  }
}
