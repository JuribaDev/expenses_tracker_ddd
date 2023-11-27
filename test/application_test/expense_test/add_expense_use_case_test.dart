// ignore_for_file: strict_raw_type

import 'package:expenses_tracker_ddd/application/expense/add_expense_use_case.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/expense_local_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockExpenseRepository extends Mock implements ExpenseLocalRepositoryImpl {}

void main() {
  late AddExpenseUseCase useCase;
  late MockExpenseRepository mockRepository;

  setUp(() {
    mockRepository = MockExpenseRepository();
    useCase = AddExpenseUseCase(mockRepository);
    registerFallbackValue(expenseEntityMockReq);
  });

  group('AddExpenseUseCase', () {
    const successMessage = 'Expense added successfully';
    const failureMessage = 'Invalid expense data';

    test('Should return success message when adding an expense is successful', () async {
      // Arrange
      final validExpense = ExpenseDTO(
        id: 1,
        title: 'Test',
        amount: '100',
        date: DateTime.now(),
      );
      when(() => mockRepository.addExpense(any())).thenAnswer((_) async => const Right(successMessage));

      // Act
      final result = await useCase(validExpense);

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(successMessage)),
      );
      verify(() => mockRepository.addExpense(any())).called(1);
    });

    test('Should return failure when adding an expense fails due to invalid data', () async {
      // Arrange
      final invalidExpense = ExpenseDTO(
        title: 'Test',
        amount: '',
        date: DateTime.now(),
      );

      // Act
      final result = await useCase(invalidExpense);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals(failureMessage)),
        (r) => fail('Expected failure but got success'),
      );
      verifyNever(() => mockRepository.addExpense(any()));
    });
  });
}
