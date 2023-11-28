part of 'add_expense_bloc.dart';

@freezed
class AddExpenseEvent with _$AddExpenseEvent {
  const factory AddExpenseEvent.addExpense(ExpenseDto expenseDto) = _AddExpense;
}
