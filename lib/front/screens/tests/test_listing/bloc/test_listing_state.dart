import 'package:psychodynamics/back/entities/test.dart';

class TestListingState {}

class TestListingLoading extends TestListingState {}

class TestListingLoaded extends TestListingState {
  TestListingLoaded({required this.tests});
  final List<Test> tests;
}

class TestListingError extends TestListingState {
  TestListingError({required this.errorMessage});
  final String errorMessage;
}