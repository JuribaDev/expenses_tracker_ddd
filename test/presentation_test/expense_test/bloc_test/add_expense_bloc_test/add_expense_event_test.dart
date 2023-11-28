import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/add_expense_bloc/add_expense_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddExpenseEvent', () {
    final expenseDto = ExpenseDto(
      id: 1,
      title: 'Groceries',
      amount: '100',
      date: DateTime(2022),
    );

    test('holds correct ExpenseDto data', () {
      final event = AddExpenseEvent.addExpense(expenseDto);

      expect(event.expenseDto.props, expenseDto.props);
    });

    test('comparison is value based', () {
      final event1 = AddExpenseEvent.addExpense(expenseDto);
      final event2 = AddExpenseEvent.addExpense(expenseDto);

      expect(event1, equals(event2));

      final differentExpenseDto = ExpenseDto(
        id: 2,
        title: 'Lunch',
        amount: '200',
        date: DateTime(2022, 1, 2),
      );
      final event3 = AddExpenseEvent.addExpense(differentExpenseDto);
      expect(event1, isNot(equals(event3)));
    });
  });
}
