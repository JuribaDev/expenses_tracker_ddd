part of 'expense_bloc.dart';

@freezed
class ExpensesEvent with _$ExpensesEvent {
  const factory ExpensesEvent.getExpenses() = _GetExpenses;

  const factory ExpensesEvent.addExpense(ExpenseDto expenseDto) = _AddExpense;

  const factory ExpensesEvent.deleteExpense(int id) = _DeleteExpense;

  const factory ExpensesEvent.updateExpense(ExpenseDto expenseDto) = _UpdateExpense;
}
