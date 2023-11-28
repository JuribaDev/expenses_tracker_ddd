import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/update_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/update_expense_bloc/update_expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

// Mock the UpdateExpenseUseCase
class MockUpdateExpenseUseCase extends Mock implements UpdateExpenseUseCase {}

void main() {
  group('UpdateExpenseBloc', () {
    late UpdateExpenseUseCase updateExpenseUseCase;
    late ExpenseDto mockExpenseDto;
    late UpdateExpenseBloc updateExpenseBloc;

    setUp(() {
      updateExpenseUseCase = MockUpdateExpenseUseCase();
      mockExpenseDto = ExpenseDto(
        id: 1,
        title: 'Test Expense',
        amount: '100',
        date: DateTime.now(),
      );
      updateExpenseBloc = UpdateExpenseBloc(updateExpenseUseCase);
      registerFallbackValue(expenseDTOMockReq);
    });

    blocTest<UpdateExpenseBloc, UpdateExpenseState>(
      'emits [loading, updated] when UpdateExpenseEvent is added and use case succeeds',
      build: () {
        when(() => updateExpenseUseCase(any())).thenAnswer((_) async => const Right('Expense Updated'));
        return updateExpenseBloc;
      },
      act: (bloc) async => bloc.add(UpdateExpenseEvent.updateExpense(mockExpenseDto)),
      expect: () => [
        const UpdateExpenseState.commonState(commonState: CommonState.loading()),
        const UpdateExpenseState.expenseUpdated('Expense Updated'),
      ],
    );

    blocTest<UpdateExpenseBloc, UpdateExpenseState>(
      'emits [loading, error] when UpdateExpenseEvent is added and use case fails',
      build: () {
        // Assume the use case fails
        when(() => updateExpenseUseCase(any())).thenAnswer((_) async => Left(Failure(message: 'Update Failed')));
        return updateExpenseBloc;
      },
      act: (bloc) => bloc.add(UpdateExpenseEvent.updateExpense(mockExpenseDto)),
      expect: () => [
        const UpdateExpenseState.commonState(commonState: CommonState.loading()),
        const UpdateExpenseState.commonState(commonState: CommonState.error(errorMessage: 'Update Failed')),
      ],
    );

    tearDown(() {
      updateExpenseBloc.close();
    });
  });
}
