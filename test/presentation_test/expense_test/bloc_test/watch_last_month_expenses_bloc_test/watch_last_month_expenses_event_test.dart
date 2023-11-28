import 'package:expenses_tracker_ddd/presentation/expense/bloc/watch_last_month_expenses_bloc/watch_last_month_expenses_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WatchLastMonthExpensesEvent', () {
    test('can be instantiated', () {
      const event = WatchLastMonthExpensesEvent.getLastMonthExpenses();

      // Verify the type of the event
      expect(event, isA<WatchLastMonthExpensesEvent>());
    });

    test('supports value comparison', () {
      const event1 = WatchLastMonthExpensesEvent.getLastMonthExpenses();
      const event2 = WatchLastMonthExpensesEvent.getLastMonthExpenses();

      // Verify that two instances of the event are considered equal
      expect(event1, equals(event2));
    });
  });
}
