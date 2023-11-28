import 'package:expenses_tracker_ddd/presentation/expense/bloc/add_expense_bloc/add_expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddExpenseState', () {
    test('commonState supports value comparisons', () {
      expect(
        const AddExpenseState.commonState(commonState: CommonState.initial()),
        const AddExpenseState.commonState(commonState: CommonState.initial()),
      );
      expect(
        const AddExpenseState.commonState(commonState: CommonState.loading()),
        isNot(const AddExpenseState.commonState(commonState: CommonState.initial())),
      );
    });

    test('expenseAdded supports value comparisons', () {
      expect(
        const AddExpenseState.expenseAdded('Expense Added Successfully'),
        const AddExpenseState.expenseAdded('Expense Added Successfully'),
      );
      expect(
        const AddExpenseState.expenseAdded('Expense Add Failed'),
        isNot(const AddExpenseState.expenseAdded('Expense Added Successfully')),
      );
    });
  });
}
