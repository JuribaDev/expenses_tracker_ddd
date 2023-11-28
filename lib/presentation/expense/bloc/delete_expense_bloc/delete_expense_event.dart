part of 'delete_expense_bloc.dart';

@freezed
class DeleteExpenseEvent with _$DeleteExpenseEvent {
  const factory DeleteExpenseEvent.deleteExpense(int id) = _DeleteExpense;
}
