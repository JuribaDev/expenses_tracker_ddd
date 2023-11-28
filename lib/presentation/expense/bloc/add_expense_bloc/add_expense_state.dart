part of 'add_expense_bloc.dart';

@freezed
class AddExpenseState with _$AddExpenseState {
  const factory AddExpenseState.commonState({required CommonState commonState}) = _CommonState;

  const factory AddExpenseState.expenseAdded(String message) = _Success;
}
