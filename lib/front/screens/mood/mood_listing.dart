import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psychodynamics/back/data/db/sqlite_provider.dart';
import 'package:psychodynamics/back/data/repositories/mood_repository.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_bloc.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_event.dart';
import 'package:psychodynamics/front/widgets/mood_tile.dart';

import 'bloc/mood_state.dart';

class MoodListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoodBloc(
        moodRepository: LocalMoodRepository(dbProvider: SQLiteProvider()),
      )..add(
          MoodLoad(),
        ),
      child: BlocBuilder<MoodBloc, MoodState>(
        builder: (context, state) {
          if (state is MoodLoaded) {
            return Scaffold(
              appBar: AppBar(),
              body: ListView(
                children: [
                  for (final mood in state.moods)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MoodTile(
                        mood: mood,
                        onTap: () {},
                      ),
                    )
                ],
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
