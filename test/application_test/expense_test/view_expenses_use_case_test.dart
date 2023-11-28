// ignore_for_file: strict_raw_type

import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/get_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/entity/expense_entity.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockExpenseRepository extends Mock implements IExpenseRepository {}

void main() {
  late GetExpensesUseCase useCase;
  late MockExpenseRepository mockRepository;

  setUp(() {
    mockRepository = MockExpenseRepository();
    useCase = GetExpensesUseCase(mockRepository);
  });

  group('ViewExpensesUseCase', () {
    const failureMessage = 'Error retrieving expenses';

    test('Should return a list of ExpenseDTO when retrieval is successful', () async {
      // Arrange
      final expensesEntityList = <ExpenseEntity>[expenseEntityMockRes];
      when(() => mockRepository.getExpenses()).thenAnswer((_) async => Right(expensesEntityList));

      // Act
      final result = await useCase(null);
      final dtoList = ExpenseDto.fromListEntity(expensesEntityList);
      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(dtoList)),
      );
      verify(() => mockRepository.getExpenses()).called(1);
    });

    test('Should return failure when retrieval fails', () async {
      // Arrange
      when(() => mockRepository.getExpenses()).thenAnswer((_) async => Left(Failure(message: failureMessage)));

      // Act
      final result = await useCase(null);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals(failureMessage)),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockRepository.getExpenses()).called(1);
    });
  });
}
