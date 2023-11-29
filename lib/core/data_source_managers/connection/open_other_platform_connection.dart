import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/connection/in_memory_connection.dart';
import 'package:expenses_tracker_ddd/core/error_handling/parse_exceptions.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

LazyDatabase otherPlatformConnection(Logger logger) {
  try {
    final db = LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
    logger.i('Other platforms production db created successfully');
    return db;
  } catch (e, stacktrace) {
    logger.e('Other platform db creation failed. error:$e \n stack track: $stacktrace');
    throw parseExceptions(Exception('Other platform db creation failed. error:$e \n stack track: $stacktrace'), logger);
  }
}

QueryExecutor connect(Logger logger) {
  return openInMemoryConnection(logger);
}
