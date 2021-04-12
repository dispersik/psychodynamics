import 'package:psychodynamics/back/data/repositories/mood_repository.dart';
import 'package:psychodynamics/back/entities/mood.dart';

class MoodInteractor {
  MoodInteractor({required MoodRepository moodRepository})
      : _moodRepository = moodRepository;

  final MoodRepository _moodRepository;

  Future<void> addMood(Mood mood) async => await _moodRepository.addMood(mood);
}
