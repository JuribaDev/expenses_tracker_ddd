// ignore_for_file: strict_raw_type

import 'package:expenses_tracker_ddd/core/error_handling/user_viewable_exception.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/expense_local_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late MockDriftLocalDataSource mockDataSource;
  late ExpenseLocalRepositoryImpl repository;

  setUp(() {
    mockDataSource = MockDriftLocalDataSource();
    repository = ExpenseLocalRepositoryImpl(mockDataSource);
    registerFallbackValue(expenseEntityMockRes);
  });

  group('addExpense', () {
    final mockExpense = expenseEntityMockRes;

    test('should return success message when adding an expense succeeds', () async {
      // Arrange
      const successMessage = 'Expense added successfully';
      when(() => mockDataSource.addExpense(any())).thenAnswer((_) async => successMessage);

      // Act
      final result = await repository.addExpense(mockExpense);

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(successMessage)),
      );
      verify(() => mockDataSource.addExpense(mockExpense)).called(1);
    });

    test('should return failure when adding an expense fails', () async {
      // Arrange
      final exception = UserViewableException(message: 'Error');
      when(() => mockDataSource.addExpense(any())).thenThrow(exception);

      // Act
      final result = await repository.addExpense(mockExpense);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals('Error')),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockDataSource.addExpense(mockExpense)).called(1);
    });
  });

  group('getLastTenExpensesTitle', () {
    test('should return a list of titles when retrieving last ten expenses succeeds', () async {
      // Arrange
      const mockTitles = [Title('title1'), Title('title2')];
      when(() => mockDataSource.getLastTenExpensesTitle()).thenAnswer((_) async => mockTitles);

      // Act
      final result = await repository.getLastTenExpensesTitle();

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(mockTitles)),
      );
      verify(() => mockDataSource.getLastTenExpensesTitle()).called(1);
    });

    test('should return failure when retrieving recent expenses fails', () async {
      // Arrange
      final exception = UserViewableException(message: 'Error');
      when(() => mockDataSource.getLastTenExpensesTitle()).thenThrow(exception);

      // Act
      final result = await repository.getLastTenExpensesTitle();

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals('Error')),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockDataSource.getLastTenExpensesTitle()).called(1);
    });
  });

  group('watchLastMonthExpenses', () {
    test('should return a stream of expenses when watching last month expenses succeeds', () async {
      // Arrange
      final mockStream = Stream.value([expenseEntityMockRes]);
      when(() => mockDataSource.watchLastMonthExpenses()).thenAnswer((_) => mockStream);

      // Act
      final result = await repository.watchLastMonthExpenses();

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(mockStream)),
      );
      verify(() => mockDataSource.watchLastMonthExpenses()).called(1);
    });

    test('should return failure when watching last month expenses fails', () async {
      // Arrange
      final exception = UserViewableException(message: 'Error');
      when(() => mockDataSource.watchLastMonthExpenses()).thenThrow(exception);

      // Act
      final result = await repository.watchLastMonthExpenses();

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals('Error')),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockDataSource.watchLastMonthExpenses()).called(1);
    });
  });
  group('deleteExpense', () {
    test('should return success message when deleting an expense succeeds', () async {
      // Arrange
      const successMessage = 'Expense deleted successfully';
      when(() => mockDataSource.deleteExpense(any())).thenAnswer((_) async => successMessage);

      // Act
      final result = await repository.deleteExpense(1);

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(successMessage)),
      );
      verify(() => mockDataSource.deleteExpense(1)).called(1);
    });

    test('should return failure when deleting an expense fails', () async {
      // Arrange
      final exception = UserViewableException(message: 'Error');
      when(() => mockDataSource.deleteExpense(any())).thenThrow(exception);

      // Act
      final result = await repository.deleteExpense(1);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals('Error')),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockDataSource.deleteExpense(1)).called(1);
    });
  });
  group('getExpenses', () {
    test('should return a list of expenses when retrieving expenses succeeds', () async {
      // Arrange
      final mockExpenses = [expenseEntityMockRes];
      when(() => mockDataSource.getExpenses()).thenAnswer((_) async => mockExpenses);

      // Act
      final result = await repository.getExpenses();

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(mockExpenses)),
      );
      verify(() => mockDataSource.getExpenses()).called(1);
    });

    test('should return failure when retrieving expenses fails', () async {
      // Arrange
      final exception = UserViewableException(message: 'Error');
      when(() => mockDataSource.getExpenses()).thenThrow(exception);

      // Act
      final result = await repository.getExpenses();

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals('Error')),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockDataSource.getExpenses()).called(1);
    });
  });
  group('updateExpense', () {
    test('should return success message when updating an expense succeeds', () async {
      // Arrange
      const successMessage = 'Expense updated successfully';
      when(() => mockDataSource.updateExpense(any())).thenAnswer((_) async => successMessage);

      // Act
      final result = await repository.updateExpense(expenseEntityMockRes);

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(successMessage)),
      );
      verify(() => mockDataSource.updateExpense(expenseEntityMockRes)).called(1);
    });

    test('should return failure when updating an expense fails', () async {
      // Arrange
      final exception = UserViewableException(message: 'Error');
      when(() => mockDataSource.updateExpense(any())).thenThrow(exception);

      // Act
      final result = await repository.updateExpense(expenseEntityMockRes);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals('Error')),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockDataSource.updateExpense(expenseEntityMockRes)).called(1);
    });
  });
}
