import 'package:drift/native.dart';
import 'package:expenses_tracker_ddd/core/error_handling/parse_exceptions.dart';
import 'package:logger/logger.dart';

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
