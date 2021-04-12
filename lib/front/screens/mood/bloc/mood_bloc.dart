import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psychodynamics/back/data/repositories/mood_repository.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_event.dart';

import 'mood_state.dart';

class MoodBloc extends Bloc<MoodEvent, MoodState> {
  MoodBloc({required this.moodRepository}) : super(MoodState());

  final MoodRepository moodRepository;

  @override
  Stream<MoodState> mapEventToState(MoodEvent event) async* {
    try {
      if (event is MoodLoad) {
        yield MoodLoading();
        final list = await moodRepository.loadMood();
        yield MoodLoaded(moods: list);
        return;
      }
    } catch (e) {
      yield MoodOnError(errorMessage: e.toString());
      return;
    }
  }
}
