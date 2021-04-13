import 'package:get_it/get_it.dart';
import 'package:psychodynamics/back/data/db/sqlite_provider.dart';
import 'package:psychodynamics/back/data/repositories/mood_repository.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_bloc.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_event.dart';

GetIt injector = GetIt.instance..initDependencies();

extension Init on GetIt {
  void initDependencies() {
    registerSingleton<SQLiteProvider>(SQLiteProvider());
    registerSingleton<LocalMoodRepository>(
        LocalMoodRepository(dbProvider: get<SQLiteProvider>()));
    registerSingleton<MoodBloc>(
      MoodBloc(
        moodRepository: get<LocalMoodRepository>(),
      )..add(
          MoodLoad(),
        ),
    );
  }
}
