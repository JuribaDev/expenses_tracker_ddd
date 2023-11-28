part of 'update_expense_bloc.dart';

@freezed
class UpdateExpenseState with _$UpdateExpenseState {
  const factory UpdateExpenseState.commonState({required CommonState commonState}) = _CommonState;

  const factory UpdateExpenseState.expenseUpdated(String message) = _ExpenseUpdated;
}
