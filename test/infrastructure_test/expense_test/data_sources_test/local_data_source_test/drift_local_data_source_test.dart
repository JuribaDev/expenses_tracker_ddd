import 'package:expenses_tracker_ddd/core/data_source_managers/connection/in_memory_connection.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/drift_local_source_manager.dart';
import 'package:expenses_tracker_ddd/domain/expense/entity/expense_entity.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/title.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/local_data_source/drift_local_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockDriftLocalDatabaseManager extends Mock implements DriftLocalDatabaseManager {}

class MockLogger extends Mock implements Logger {}

void main() {
  late DriftLocalDataSource dataSource;
  late DriftLocalDatabaseManager databaseManager;
  late MockLogger mockLogger;

  setUp(() {
    mockLogger = MockLogger();
    databaseManager = DriftLocalDatabaseManager(openInMemoryConnection(mockLogger));
    dataSource = DriftLocalDataSource(databaseManager, mockLogger);
  });
  tearDown(() async {
    await databaseManager.close();
  });
  group('DriftLocalDataSource - addExpense', () {
    test('Should add expense to the database and log success message', () async {
      // Arrange & Act
      final res = await dataSource.addExpense(expenseEntityMockRes);

      // Assert
      expect(res, equals('Expense added successfully'));
      verify(() => mockLogger.i('Expense added successfully')).called(1);
      verifyNever(() => mockLogger.e('Expense adding failed. error:Exception: Error \n stack track: null')).called(0);
    });
  });
  group('DriftLocalDataSource - getExpenses', () {
    test('Should get expenses from the database and log success message', () async {
      // Arrange & Act
      await dataSource.addExpense(expenseEntityMockReq);
      final res = await dataSource.getExpenses();

      // Assert
      expect(res, isA<List<ExpenseEntity>>());
      expect(res.first.title, equals(expenseEntityMockReq.title));
      verify(() => mockLogger.i('Expenses retrieved successfully')).called(1);
      verifyNever(() => mockLogger.e('Expenses retrieval failed. error:Exception: Error \n stack track: null'));
    });
  });

  group('DriftLocalDataSource - getRecentExpensesTitle', () {
    test('Should get recent expenses title from the database and log success message', () async {
      // Arrange & Act
      await dataSource.addExpense(expenseEntityMockReq);
      final res = await dataSource.getRecentExpensesTitle();

      // Assert
      expect(res, isA<List<Title>>());
      expect(res.first, equals(expenseEntityMockReq.title));
      verify(() => mockLogger.i('Recent expenses retrieved successfully')).called(1);
      verifyNever(
        () => mockLogger.e('Recent expenses title retrieval failed. error:Exception: Error \n stack track: null'),
      );
    });
  });

  group('DriftLocalDataSource - deleteExpense', () {
    test('Should delete expense from the database and log success message', () async {
      // Arrange & Act
      await dataSource.addExpense(expenseEntityMockReq);
      final res = await dataSource.deleteExpense(1);

      // Assert
      expect(res, equals('Expense deleted successfully'));
      verify(() => mockLogger.i('Expense deleted successfully')).called(1);
      verifyNever(() => mockLogger.e('Expense deletion failed. error:Exception: Error \n stack track: null'));
    });
  });

  group('DriftLocalDataSource - updateExpense', () {
    test('Should update expense from the database and log success message', () async {
      // Arrange & Act
      await dataSource.addExpense(expenseEntityMockReq);
      final res = await dataSource.updateExpense(expenseEntityMockRes);

      // Assert
      expect(res, equals('Expense updated successfully'));
      verify(() => mockLogger.i('Expense updated successfully')).called(1);
      verifyNever(() => mockLogger.e('Expense update failed. error:Exception: Error \n stack track: null'));
    });
  });

  group('DriftLocalDataSource - watchLastMonthExpenses', () {
    test('Should watch last month expenses from the database and log success message', () async {
      // Arrange & Act
      await dataSource.addExpense(expenseEntityMockReq);
      final res = dataSource.watchLastMonthExpenses();

      // Assert
      expect(res, isA<Stream<List<ExpenseEntity>>>());
      await res.first.then((value) => expect(value, isA<List<ExpenseEntity>>()));
      await res.first.then((value) => expect(value.first.title, equals(expenseEntityMockReq.title)));
      verify(() => mockLogger.i('watching last month expenses')).called(1);
      verifyNever(
        () => mockLogger.e('watching last month expenses failed. error:Exception: Error \n stack track: null'),
      );
    });
  });

  group('DriftLocalDataSource - getRecentExpensesTitle', () {
    test('Should get recent expenses title from the database and log success message', () async {
      // Arrange
      await dataSource.addExpense(expenseEntityMockReq);
      // Act
      final res = await dataSource.getRecentExpensesTitle();

      // Assert
      expect(res, isA<List<Title>>());
      expect(res.first.value, equals(expenseEntityMockReq.title.value));
      verify(() => mockLogger.i('Recent expenses retrieved successfully')).called(1);
      verifyNever(
        () => mockLogger.e('Recent expenses title retrieval failed. error:Exception: Error \n stack track: null'),
      );
    });
  });
}
