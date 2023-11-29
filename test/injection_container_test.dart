import 'package:expenses_tracker_ddd/application/expense/expense_use_cases.dart';
import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/drift_local_source_manager.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/expense_local_repository_impl.dart';
import 'package:expenses_tracker_ddd/injection_container/inject_multi_platform_dependencies.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

import 'helpers/mocks.dart';

void main() {
  final sl = GetIt.instance;
  late MockLogger logger;

  setUpAll(() async {
    logger = MockLogger();
    await injectMultiPlatformDependencies(logger, env: Environment.development, sl: sl);
  });

  group('Service Locator Tests', () {
    test('should register Logger', () {
      final instance = sl<Logger>();
      expect(instance, isNotNull);
      expect(instance, isA<Logger>());
    });

    test('should register DriftLocalDatabaseManager', () {
      final instance = sl<DriftLocalDatabaseManager>();
      expect(instance, isNotNull);
      expect(instance, isA<DriftLocalDatabaseManager>());
      verify(() => logger.i('In memory db created successfully')).called(1);
    });

    test('should register ExpenseLocalRepositoryImpl', () {
      final instance = sl<IExpenseRepository>();
      expect(instance, isNotNull);
      expect(instance, isA<ExpenseLocalRepositoryImpl>());
    });

    test('should register WatchLastMonthExpensesUseCase', () {
      final instance = sl<WatchLastMonthExpensesUseCase>();
      expect(instance, isNotNull);
      expect(instance, isA<WatchLastMonthExpensesUseCase>());
    });

    test('should register GetExpensesUseCase', () {
      final instance = sl<GetExpensesUseCase>();
      expect(instance, isNotNull);
      expect(instance, isA<GetExpensesUseCase>());
    });

    test('should register GetLastTenExpensesTitleUseCase', () {
      final instance = sl<GetLastTenExpensesTitleUseCase>();
      expect(instance, isNotNull);
      expect(instance, isA<GetLastTenExpensesTitleUseCase>());
    });

    test('should register AddExpenseUseCase', () {
      final instance = sl<AddExpenseUseCase>();
      expect(instance, isNotNull);
      expect(instance, isA<AddExpenseUseCase>());
    });

    test('should register UpdateExpenseUseCase', () {
      final instance = sl<UpdateExpenseUseCase>();
      expect(instance, isNotNull);
      expect(instance, isA<UpdateExpenseUseCase>());
    });

    test('should register DeleteExpenseUseCase', () {
      final instance = sl<DeleteExpenseUseCase>();
      expect(instance, isNotNull);
      expect(instance, isA<DeleteExpenseUseCase>());
    });

    test('should register DeleteExpenseUseCase', () {
      final instance = sl<WatchLastMonthExpensesBloc>();
      expect(instance, isNotNull);
      expect(instance, isA<WatchLastMonthExpensesBloc>());
    });

    test('should register GetExpensesBloc', () {
      final instance = sl<ExpenseBloc>();
      expect(instance, isNotNull);
      expect(instance, isA<ExpenseBloc>());
    });
  });
}
