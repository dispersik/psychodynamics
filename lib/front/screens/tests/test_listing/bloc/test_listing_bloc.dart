import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psychodynamics/back/entities/test.dart';
import 'package:psychodynamics/front/screens/tests/test_listing/bloc/test_listing_event.dart';
import 'package:psychodynamics/front/screens/tests/test_listing/bloc/test_listing_state.dart';
import 'package:psychodynamics/interactors/test_listing_interactor.dart';

class TestListingBloc extends Bloc<TestListingEvent, TestListingState> {
  TestListingBloc() : super(TestListingState());
  final TestListingInteractor _interactor = TestListingInteractor();

  @override
  Stream<TestListingState> mapEventToState(TestListingEvent event) async* {
    if (event is TestListingLoad) {
      yield TestListingLoading();
      try {
        final List<Test> tests = await _interactor.loadTests();
        yield TestListingLoaded(tests: tests);
        return;
      } catch (e) {
        yield TestListingError(errorMessage: e.toString());
        return;
      }
    }
  }
}
