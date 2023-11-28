// ignore_for_file: strict_raw_type

import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/update_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockExpenseRepository extends Mock implements IExpenseRepository {}

void main() {
  late UpdateExpenseUseCase useCase;
  late MockExpenseRepository mockRepository;

  setUp(() {
    mockRepository = MockExpenseRepository();
    useCase = UpdateExpenseUseCase(mockRepository);
    registerFallbackValue(expenseEntityMockReq);
  });

  group('UpdateExpenseUseCase', () {
    const successMessage = 'Expense updated successfully';

    test('Should return success message when updating an expense is successful', () async {
      // Arrange
      final validExpenseDTO = ExpenseDto(
        id: 1,
        title: 'Test',
        amount: '100',
        date: DateTime.now(),
      );
      when(() => mockRepository.updateExpense(any())).thenAnswer((_) async => const Right(successMessage));

      // Act
      final result = await useCase(validExpenseDTO);

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(successMessage)),
      );
      verify(() => mockRepository.updateExpense(any())).called(1);
    });

    test('Should return failure when updating an expense fails due to null id', () async {
      // Arrange
      final invalidExpenseDTO = ExpenseDto(
        title: 'Test',
        amount: '100',
        date: DateTime.now(),
      );

      // Act
      final result = await useCase(invalidExpenseDTO);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals('Expense id is required')),
        (r) => fail('Expected failure but got success'),
      );
      verifyNever(() => mockRepository.updateExpense(any()));
    });

    test('Should return failure when updating an expense fails due to invalid data', () async {
      // Arrange
      final invalidExpenseDTO = ExpenseDto(
        id: 1,
        title: '',
        amount: '100',
        date: DateTime.now(),
      );

      // Act
      final result = await useCase(invalidExpenseDTO);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, contains('Invalid expense data')),
        (r) => fail('Expected failure but got success'),
      );
      verifyNever(() => mockRepository.updateExpense(any()));
    });
  });
}
