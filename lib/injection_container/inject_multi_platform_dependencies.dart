// ignore_for_file: cascade_invocations

import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/connection/connection.dart' as impl;
import 'package:expenses_tracker_ddd/core/data_source_managers/drift_local_source_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

Future<void> injectMultiPlatformDependencies(
  Logger logger, {
  required Environment env,
  required GetIt sl,
}) async {
  // Logger
  sl.registerSingleton<Logger>(logger);
  sl.registerSingleton<DriftLocalDatabaseManager>(DriftLocalDatabaseManager(impl.connect(sl())));
}
