// ignore_for_file: strict_raw_type, inference_failure_on_instance_creation

import 'dart:async';

import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/watch_last_month_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/entity/expense_entity.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockExpenseRepository extends Mock implements IExpenseRepository {}

void main() {
  late WatchLastMonthExpensesUseCase useCase;
  late MockExpenseRepository mockRepository;
  late StreamController<List<ExpenseEntity>> streamController;

  setUp(() {
    mockRepository = MockExpenseRepository();
    useCase = WatchLastMonthExpensesUseCase(mockRepository);
    streamController = StreamController<List<ExpenseEntity>>();
  });

  tearDown(() {
    streamController.close();
  });

  group('WatchLastMonthExpensesUseCase', () {
    test('Should return a stream of ExpenseDTO when data retrieval is successful', () async {
      // Arrange
      streamController.add([expenseEntityMockRes]);
      final expensesStream = streamController.stream;
      when(() => mockRepository.watchLastMonthExpenses()).thenAnswer((_) async => Right(expensesStream));
      final expectedDTOList = [ExpenseDTO.fromEntity(expenseEntityMockRes)];

      // Act
      final result = await useCase(null);

      // Assert
      expect(result, isA<Right>());
      await expectLater(result.fold((l) => const Stream.empty(), (r) => r), emitsInOrder([expectedDTOList]));
      verify(() => mockRepository.watchLastMonthExpenses()).called(1);
    });
  });
}
