// ignore_for_file: strict_raw_type

import 'package:expenses_tracker_ddd/application/expense/use_case/get_last_ten_expenses_title_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExpenseRepository extends Mock implements IExpenseRepository {}

void main() {
  late GetLastTenExpensesTitleUseCase useCase;
  late MockExpenseRepository mockRepository;

  setUp(() {
    mockRepository = MockExpenseRepository();
    useCase = GetLastTenExpensesTitleUseCase(mockRepository);
  });

  group('GetLastTenExpensesTitleUseCase', () {
    const failureMessage = 'Failed to retrieve data';

    test('Should return a list of titles when retrieval is successful', () async {
      // Arrange
      final titles = List<Title>.generate(10, (index) => Title('Expense ${index + 1}'));
      when(() => mockRepository.getLastTenExpensesTitle()).thenAnswer((_) async => Right(titles));

      // Act
      final result = await useCase(null);

      // Assert
      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected success but got failure'),
        (r) => expect(r, equals(titles)),
      );
      verify(() => mockRepository.getLastTenExpensesTitle()).called(1);
    });

    test('Should return failure when retrieval fails', () async {
      // Arrange
      when(() => mockRepository.getLastTenExpensesTitle())
          .thenAnswer((_) async => Left(Failure(message: failureMessage)));

      // Act
      final result = await useCase(null);

      // Assert
      expect(result, isA<Left>());
      result.fold(
        (l) => expect(l.message, equals(failureMessage)),
        (r) => fail('Expected failure but got success'),
      );
      verify(() => mockRepository.getLastTenExpensesTitle()).called(1);
    });
  });
}
