part of 'get_expenses_bloc.dart';

@freezed
class GetExpensesState with _$GetExpensesState {
  const factory GetExpensesState.commonState({required CommonState commonState}) = _CommonState;

  const factory GetExpensesState.expensesLoaded(List<ExpenseDto> expenses) = _ExpensesLoaded;
}
