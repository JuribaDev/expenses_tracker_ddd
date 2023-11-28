part of 'delete_expense_bloc.dart';

@freezed
class DeleteExpenseState with _$DeleteExpenseState {
  const factory DeleteExpenseState.commonState({required CommonState commonState}) = _CommonState;

  const factory DeleteExpenseState.expenseDeleted(String message) = _ExpenseDeleted;
}
