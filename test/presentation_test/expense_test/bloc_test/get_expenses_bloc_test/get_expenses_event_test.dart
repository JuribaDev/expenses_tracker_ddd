import 'package:expenses_tracker_ddd/presentation/expense/bloc/get_expenses_bloc/get_expenses_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GetExpensesEvent', () {
    test('can be instantiated', () {
      const event = GetExpensesEvent.getExpenses();

      expect(event, isA<GetExpensesEvent>());
    });

    test('supports value comparison', () {
      const event1 = GetExpensesEvent.getExpenses();
      const event2 = GetExpensesEvent.getExpenses();

      expect(event1, equals(event2));
    });
  });
}
