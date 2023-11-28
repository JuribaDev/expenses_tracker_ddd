import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/add_expense_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/add_expense_bloc/add_expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockAddExpenseUseCase extends Mock implements AddExpenseUseCase {}

void main() {
  group('AddExpenseBloc', () {
    late AddExpenseUseCase addExpenseUseCase;
    late ExpenseDto mockExpenseDto;
    late AddExpenseBloc addExpenseBloc;

    setUp(() {
      addExpenseUseCase = MockAddExpenseUseCase();
      mockExpenseDto = ExpenseDto(
        id: 1,
        title: 'New Expense',
        amount: '50',
        date: DateTime.now(),
      );
      addExpenseBloc = AddExpenseBloc(addExpenseUseCase);
      registerFallbackValue(expenseDTOMockReq);
    });

    blocTest<AddExpenseBloc, AddExpenseState>(
      'emits [loading, expenseAdded] when AddExpenseEvent is added and use case succeeds',
      build: () {
        when(() => addExpenseUseCase(any())).thenAnswer((_) async => const Right('Expense Added'));
        return addExpenseBloc;
      },
      act: (bloc) async => bloc.add(AddExpenseEvent.addExpense(mockExpenseDto)),
      expect: () => [
        const AddExpenseState.commonState(commonState: CommonState.loading()),
        const AddExpenseState.expenseAdded('Expense Added'),
      ],
    );

    blocTest<AddExpenseBloc, AddExpenseState>(
      'emits [loading, error] when AddExpenseEvent is added and use case fails',
      build: () {
        when(() => addExpenseUseCase(any())).thenAnswer((_) async => Left(Failure(message: 'Add Failed')));
        return addExpenseBloc;
      },
      act: (bloc) => bloc.add(AddExpenseEvent.addExpense(mockExpenseDto)),
      expect: () => [
        const AddExpenseState.commonState(commonState: CommonState.loading()),
        const AddExpenseState.commonState(commonState: CommonState.error(errorMessage: 'Add Failed')),
      ],
    );

    tearDown(() {
      addExpenseBloc.close();
    });
  });
}
