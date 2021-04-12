import 'package:psychodynamics/back/data/db/sqlite_provider.dart';
import 'package:psychodynamics/back/entities/mood.dart';
import 'package:sqflite_common/sqlite_api.dart';

abstract class MoodRepository {
  Future<void> addMood(Mood mood);

  Future<void> deleteMood(Mood mood);

  Future<void> updateMood(Mood oldMood, Mood newMood);

  Future<List<Mood>> loadMood();
}

class LocalMoodRepository extends MoodRepository {
  LocalMoodRepository({required this.dbProvider});

  final SQLiteProvider dbProvider;

  @override
  Future<void> addMood(Mood mood) async {
    final Database db = await dbProvider.getDBInstance();
    await db.insert('MoodRecords', mood.toMap());
  }

  @override
  Future<void> deleteMood(Mood mood) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateMood(Mood oldMood, Mood newMood) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Mood>> loadMood() async {
    final Database db = await dbProvider.getDBInstance();
    return (await db.query('MoodRecords'))
        .map((map) => Mood.fromMap(map))
        .toList();
  }
}
