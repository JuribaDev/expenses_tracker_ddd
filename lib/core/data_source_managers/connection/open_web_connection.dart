import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:expenses_tracker_ddd/core/error_handling/parse_exceptions.dart';
import 'package:logger/logger.dart';

DatabaseConnection connect(Logger logger) {
  return DatabaseConnection.delayed(
    Future(() async {
      try {
        final result = await WasmDatabase.open(
          databaseName: 'my_app_db', // prefer to only use valid identifiers here
          sqlite3Uri: Uri.parse('sqlite3.wasm'),
          driftWorkerUri: Uri.parse('drift_worker.dart.js'),
        );

        if (result.missingFeatures.isNotEmpty) {
          logger.i('Using ${result.chosenImplementation} due to missing browser '
              'features: ${result.missingFeatures}');
        }
        logger.i('Web db created successfully');
        return result.resolvedExecutor;
      } catch (e, stacktrace) {
        logger.e('Web db creation failed. error:$e \n stack track: $stacktrace');
        throw parseExceptions(Exception('Web db creation failed. error:$e \n stack track: $stacktrace'), logger);
      }
    }),
  );
}
