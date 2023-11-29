part of 'expense_bloc.dart';

@freezed
class ExpensesState with _$ExpensesState {
  const factory ExpensesState.commonState({required CommonState commonState}) = _CommonState;

  const factory ExpensesState.expensesLoaded(List<ExpenseDto> expense) = _ExpensesLoaded;

  const factory ExpensesState.expenseDeleted(String message) = _ExpenseDeleted;

  const factory ExpensesState.expenseUpdated(String message) = _ExpenseUpdated;

  const factory ExpensesState.expenseAdded(String message) = _ExpenseAdded;
}
