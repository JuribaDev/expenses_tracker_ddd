part of 'update_expense_bloc.dart';

@freezed
class UpdateExpenseEvent with _$UpdateExpenseEvent {
  const factory UpdateExpenseEvent.updateExpense(ExpenseDto expenseDto) = _UpdateExpense;
}
