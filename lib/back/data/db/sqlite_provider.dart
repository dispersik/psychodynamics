import 'package:path/path.dart';
import 'package:psychodynamics/back/entities/mappable_mixin.dart';
import 'package:psychodynamics/back/entities/test_info.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteProvider {
  Future<Database> _getDBInstance(String dbName) async => openDatabase(
        join(await getDatabasesPath(), dbName),
        onCreate: _onCreate,
        version: 1,
      );

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE '
            'TestInfo(id INTEGER PRIMARY KEY, testName TEXT, duration INT)');
    await db.execute(
        'CREATE TABLE '
            'TestEntries(id INTEGER PRIMARY KEY, testName TEXT, dt TEXT)');
    await db.execute(
        'CREATE TABLE '
            'MoodRecords(id INTEGER PRIMARY KEY, dt TEXT,'
            ' title TEXT, comment TEXT, emotions TEXT, influencers TEXT)');
  }

  Future<void> insertEntity({
    required Mappable entity,
    required String tableName,
    required String dbName,
  }) async {
    final Database db = await _getDBInstance(dbName);
    await db.insert(
      tableName,
      entity.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertTestInfo(TestInfo test) async {
    final Database db = await _getDBInstance('tests.db');
    await db.insert(
      'Tests',
      test.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TestInfo>> loadTestInfo() async {
    final Database db = await _getDBInstance('tests.db');
    return (await db.query('TestInfo'))
        .map((Map<String, Object?> map) => TestInfo.fromMap(map))
        .toList();
  }

  // Future<List<TestInfo>> getValues({
  //   required String tableName,
  //   required String dbName,
  // }) async {
  //   final Database db = await _getDBInstance('test_entries.db');
  //   return (await db.query('Tests'))
  //       .map((map) => TestInfo.fromMap(map))
  //       .toList();
  // }
}
