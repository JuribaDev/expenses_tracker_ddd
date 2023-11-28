import 'package:expenses_tracker_ddd/presentation/expense/bloc/delete_expense_bloc/delete_expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DeleteExpenseState', () {
    test('commonState supports value comparisons', () {
      expect(
        const DeleteExpenseState.commonState(commonState: CommonState.initial()),
        const DeleteExpenseState.commonState(commonState: CommonState.initial()),
      );
      expect(
        const DeleteExpenseState.commonState(commonState: CommonState.loading()),
        isNot(const DeleteExpenseState.commonState(commonState: CommonState.initial())),
      );
    });

    test('expenseDeleted supports value comparisons', () {
      expect(
        const DeleteExpenseState.expenseDeleted('Expense Deleted Successfully'),
        const DeleteExpenseState.expenseDeleted('Expense Deleted Successfully'),
      );
      expect(
        const DeleteExpenseState.expenseDeleted('Expense Deletion Failed'),
        isNot(const DeleteExpenseState.expenseDeleted('Expense Deleted Successfully')),
      );
    });
  });
}
