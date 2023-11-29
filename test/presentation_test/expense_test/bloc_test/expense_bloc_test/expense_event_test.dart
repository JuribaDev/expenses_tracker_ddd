import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc/expense_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GetExpensesEvent', () {
    test('can be instantiated', () {
      const event = ExpensesEvent.getExpenses();

      expect(event, isA<ExpensesEvent>());
    });

    test('supports value comparison', () {
      const event1 = ExpensesEvent.getExpenses();
      const event2 = ExpensesEvent.getExpenses();

      expect(event1, equals(event2));
    });
  });
}
