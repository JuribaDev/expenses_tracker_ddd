// ignore_for_file: cascade_invocations

import 'package:expenses_tracker_ddd/application/expense/expense_use_cases.dart';
import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/connection/connection.dart' as impl;
import 'package:expenses_tracker_ddd/core/data_source_managers/drift_local_source_manager.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/expense_local_repository_impl.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/local_data_source/drift_local_data_source.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

Future<void> injectMultiPlatformDependencies(
  Logger logger, {
  required Environment env,
  required GetIt sl,
}) async {
  // Logger
  sl.registerSingleton<Logger>(logger);
  // Drift aka moor aka ORM of sqlite DB.
  sl.registerSingleton<DriftLocalDatabaseManager>(DriftLocalDatabaseManager(impl.connect(sl())));

  /// Expense Feature
  // Infrastructure layer
  sl.registerLazySingleton<DriftLocalDataSource>(() => DriftLocalDataSource(sl(), sl()));
  sl.registerLazySingleton<IExpenseRepository>(() => ExpenseLocalRepositoryImpl(sl()));
  // Application layer
  sl.registerFactory<WatchLastMonthExpensesUseCase>(() => WatchLastMonthExpensesUseCase(sl()));
  sl.registerFactory<GetExpensesUseCase>(() => GetExpensesUseCase(sl()));
  sl.registerFactory<GetLastTenExpensesTitleUseCase>(() => GetLastTenExpensesTitleUseCase(sl()));
  sl.registerFactory<AddExpenseUseCase>(() => AddExpenseUseCase(sl()));
  sl.registerFactory<UpdateExpenseUseCase>(() => UpdateExpenseUseCase(sl()));
  sl.registerFactory<DeleteExpenseUseCase>(() => DeleteExpenseUseCase(sl()));
  // Presentation layer
  sl.registerLazySingleton<WatchLastMonthExpensesBloc>(() => WatchLastMonthExpensesBloc(sl()));
  sl.registerLazySingleton<ExpenseBloc>(() => ExpenseBloc(sl(), sl(), sl(), sl()));
}
