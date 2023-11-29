import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/expense_use_cases.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc/expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetExpensesUseCase extends Mock implements GetExpensesUseCase {}

class MockAddExpensesUseCase extends Mock implements AddExpenseUseCase {}

class MockDeleteExpensesUseCase extends Mock implements DeleteExpenseUseCase {}

class MockUpdateExpensesUseCase extends Mock implements UpdateExpenseUseCase {}

void main() {
  group('GetExpensesBloc', () {
    late GetExpensesUseCase getExpensesUseCase;
    late ExpenseBloc expensesBloc;
    late AddExpenseUseCase addExpenseUseCase;
    late DeleteExpenseUseCase deleteExpenseUseCase;
    late UpdateExpenseUseCase updateExpenseUseCase;

    setUp(() {
      getExpensesUseCase = MockGetExpensesUseCase();
      addExpenseUseCase = MockAddExpensesUseCase();
      deleteExpenseUseCase = MockDeleteExpensesUseCase();
      updateExpenseUseCase = MockUpdateExpensesUseCase();
      expensesBloc = ExpenseBloc(getExpensesUseCase, addExpenseUseCase, deleteExpenseUseCase, updateExpenseUseCase);
    });
    final mockExpenseDto = ExpenseDto(title: 'title', amount: '1', date: DateTime.now());

    blocTest<ExpenseBloc, ExpensesState>(
      'emits [loading, expensesLoaded] when GetExpensesEvent is added and use case succeeds',
      build: () {
        when(() => getExpensesUseCase(any())).thenAnswer((_) async => const Right(<ExpenseDto>[]));
        return expensesBloc;
      },
      act: (bloc) async => bloc.add(const ExpensesEvent.getExpenses()),
      expect: () => [
        const ExpensesState.commonState(commonState: CommonState.loading()),
        const ExpensesState.expensesLoaded(<ExpenseDto>[]),
      ],
    );

    blocTest<ExpenseBloc, ExpensesState>(
      'emits [loading, error] when GetExpensesEvent is added and use case fails',
      build: () {
        when(() => getExpensesUseCase(any())).thenAnswer((_) async => Left(Failure(message: 'Load Failed')));
        return expensesBloc;
      },
      act: (bloc) => bloc.add(const ExpensesEvent.getExpenses()),
      expect: () => [
        const ExpensesState.commonState(commonState: CommonState.loading()),
        const ExpensesState.commonState(commonState: CommonState.error(errorMessage: 'Load Failed')),
      ],
    );

    blocTest<ExpenseBloc, ExpensesState>(
      'emits [loading, expenseAdded] when AddExpenseEvent is added and use case succeeds',
      build: () {
        when(() => addExpenseUseCase(mockExpenseDto))
            .thenAnswer((_) async => const Right('Expense Added Successfully'));
        return expensesBloc;
      },
      act: (bloc) => bloc.add(ExpensesEvent.addExpense(mockExpenseDto)),
      expect: () => [
        const ExpensesState.commonState(commonState: CommonState.loading()),
        const ExpensesState.expenseAdded('Expense Added Successfully'),
      ],
    );

    blocTest<ExpenseBloc, ExpensesState>(
      'emits [loading, expenseDeleted] when DeleteExpenseEvent is added and use case succeeds',
      build: () {
        const mockExpenseId = 1;
        when(() => deleteExpenseUseCase(mockExpenseId))
            .thenAnswer((_) async => const Right('Expense Deleted Successfully'));
        return expensesBloc;
      },
      act: (bloc) => bloc.add(const ExpensesEvent.deleteExpense(1)),
      expect: () => [
        const ExpensesState.commonState(commonState: CommonState.loading()),
        const ExpensesState.expenseDeleted('Expense Deleted Successfully'),
      ],
    );

    blocTest<ExpenseBloc, ExpensesState>(
      'emits [loading, expenseUpdated] when UpdateExpenseEvent is added and use case succeeds',
      build: () {
        when(() => updateExpenseUseCase(mockExpenseDto))
            .thenAnswer((_) async => const Right('Expense Updated Successfully'));
        return expensesBloc;
      },
      act: (bloc) => bloc.add(ExpensesEvent.updateExpense(mockExpenseDto)),
      expect: () => [
        const ExpensesState.commonState(commonState: CommonState.loading()),
        const ExpensesState.expenseUpdated('Expense Updated Successfully'),
      ],
    );

    tearDown(() {
      expensesBloc.close();
    });
  });
}
