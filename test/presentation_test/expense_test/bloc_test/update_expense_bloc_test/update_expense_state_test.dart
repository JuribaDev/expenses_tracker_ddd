import 'package:expenses_tracker_ddd/presentation/expense/bloc/update_expense_bloc/update_expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UpdateExpenseState', () {
    test('commonState supports value comparisons', () {
      expect(
        const UpdateExpenseState.commonState(commonState: CommonState.initial()),
        const UpdateExpenseState.commonState(commonState: CommonState.initial()),
      );
      expect(
        const UpdateExpenseState.commonState(commonState: CommonState.loading()),
        isNot(const UpdateExpenseState.commonState(commonState: CommonState.initial())),
      );
    });

    test('expenseUpdated supports value comparisons', () {
      expect(
        const UpdateExpenseState.expenseUpdated('Expense Updated Successfully'),
        const UpdateExpenseState.expenseUpdated('Expense Updated Successfully'),
      );
      expect(
        const UpdateExpenseState.expenseUpdated('Expense Update Failed'),
        isNot(const UpdateExpenseState.expenseUpdated('Expense Updated Successfully')),
      );
    });
  });
}
