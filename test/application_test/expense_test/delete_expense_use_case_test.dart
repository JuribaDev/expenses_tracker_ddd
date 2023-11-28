// ignore_for_file: strict_raw_type

import 'package:expenses_tracker_ddd/application/expense/use_case/delete_expense_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockExpenseRepository extends Mock implements IExpenseRepository {}

void main() {
  late DeleteExpenseUseCase useCase;
  late MockExpenseRepository mockRepository;

  setUp(() {
    mockRepository = MockExpenseRepository();
    useCase = DeleteExpenseUseCase(mockRepository);
    registerFallbackValue(expenseEntityMockReq);
  });

  group('DeleteExpenseUseCase', () {
    const successMessage = 'Expense deleted successfully';
    const failureMessage = 'Expense not found';

    test('Should return success message when deleting an expense is successful', () async {
      // Arrange
      const expenseId = 1;
      when(() => mockRepository.deleteExpense(expenseId)).thenAnswer((_) async => const Right(successMessage));

      // Act
      final result = await useCase(expenseId);

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(successMessage)),
      );
      verify(() => mockRepository.deleteExpense(expenseId)).called(1);
    });

    test('Should return failure when deleting an expense fails due to non-existence', () async {
      // Arrange
      const expenseId = 2;
      when(() => mockRepository.deleteExpense(expenseId))
          .thenAnswer((_) async => Left(Failure(message: failureMessage)));

      // Act
      final result = await useCase(expenseId);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals(failureMessage)),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockRepository.deleteExpense(expenseId)).called(1);
    });
  });
}
