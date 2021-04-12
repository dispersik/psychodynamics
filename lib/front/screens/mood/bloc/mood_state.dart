import 'package:psychodynamics/back/entities/mood.dart';

class MoodState {}

class MoodLoading extends MoodState {}

class MoodLoaded extends MoodState {
  MoodLoaded({required this.moods});
  final List<Mood> moods;
}

class MoodOnError extends MoodState {
  MoodOnError({required this.errorMessage});

  final String errorMessage;
}