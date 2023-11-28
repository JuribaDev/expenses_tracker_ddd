import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/get_expenses_bloc/get_expenses_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GetExpensesState', () {
    test('commonState supports value comparisons', () {
      expect(
        const GetExpensesState.commonState(commonState: CommonState.initial()),
        const GetExpensesState.commonState(commonState: CommonState.initial()),
      );
      expect(
        const GetExpensesState.commonState(commonState: CommonState.loading()),
        isNot(const GetExpensesState.commonState(commonState: CommonState.initial())),
      );
    });

    test('expensesLoaded supports value comparisons', () {
      final expensesList1 = [
        ExpenseDto(id: 1, title: 'Groceries', amount: '100', date: DateTime(2022)),
        ExpenseDto(id: 2, title: 'Utilities', amount: '200', date: DateTime(2022, 1, 2)),
      ];
      final expensesList2 = [
        ExpenseDto(id: 1, title: 'Groceries', amount: '100', date: DateTime(2022)),
        ExpenseDto(id: 2, title: 'Utilities', amount: '200', date: DateTime(2022, 1, 2)),
      ];

      expect(
        GetExpensesState.expensesLoaded(expensesList1),
        GetExpensesState.expensesLoaded(expensesList2),
      );

      final differentExpensesList = [
        ExpenseDto(id: 3, title: 'Rent', amount: '500', date: DateTime(2022, 1, 3)),
      ];
      expect(
        GetExpensesState.expensesLoaded(expensesList1),
        isNot(GetExpensesState.expensesLoaded(differentExpensesList)),
      );
    });
  });
}
