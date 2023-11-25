import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expenses_tracker_ddd/core/error_handling/parse_exceptions.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'local_source_manager.g.dart';

@DriftDatabase()
class LocalDatabaseManager extends _$LocalDatabaseManager {
  LocalDatabaseManager(super.e);

  @override
  int get schemaVersion => 1;
}

// Use this function in your production code
LazyDatabase openRealConnection(Logger logger) {
  try {
    final db = LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
    logger.i('Production db created successfully');
    return db;
  } catch (e, stacktrace) {
    logger.e('Production db creation failed. error:$e \n stack track: $stacktrace');
    throw parseExceptions(Exception('Production db creation failed. error:$e \n stack track: $stacktrace'), logger);
  }
}

// Use an in-memory database for testing
NativeDatabase openInMemoryConnection(Logger logger) {
  try {
    final inMemoryDB = NativeDatabase.memory();
    logger.i('In memory db created successfully');
    return inMemoryDB;
  } catch (e, stacktrace) {
    logger.e('In memory db creation failed. error:$e \n stack track: $stacktrace');
    throw parseExceptions(Exception('In memory db creation failed. error:$e \n stack track: $stacktrace'), logger);
  }
}
