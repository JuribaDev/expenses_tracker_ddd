// ignore_for_file: cascade_invocations

import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/local_source_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies(Logger logger, {required Environment env}) async {
  // Logger
  sl.registerSingleton<Logger>(logger);
  // Local Database
  sl.registerSingleton<LocalDatabaseManager>(
    LocalDatabaseManager(
      Environment.development != env ? openRealConnection(sl()) : openInMemoryConnection(sl()),
    ),
  );
}
