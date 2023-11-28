import 'package:expenses_tracker_ddd/presentation/expense/bloc/delete_expense_bloc/delete_expense_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DeleteExpenseEvent', () {
    test('can be instantiated with an id', () {
      const id = 1;
      const event = DeleteExpenseEvent.deleteExpense(id);
      expect(event.id, id);
    });

    test('supports value comparison', () {
      const id = 1;
      const event1 = DeleteExpenseEvent.deleteExpense(id);
      const event2 = DeleteExpenseEvent.deleteExpense(id);

      // Verify that two events with the same id are considered equal
      expect(event1, equals(event2));

      // Verify that two events with different ids are considered not equal
      const event3 = DeleteExpenseEvent.deleteExpense(2);
      expect(event1, isNot(equals(event3)));
    });
  });
}
