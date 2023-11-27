// ignore_for_file: cascade_invocations

import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/connection/connection.dart' as impl;
import 'package:expenses_tracker_ddd/core/data_source_managers/drift_local_source_manager.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/expense_local_repository_impl.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/local_data_source/drift_local_data_source.dart';
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

  // Infrastructure layer
  sl.registerLazySingleton<DriftLocalDataSource>(() => DriftLocalDataSource(sl(), sl()));
  sl.registerLazySingleton<IExpenseRepository>(() => ExpenseLocalRepositoryImpl(sl()));
}
