part of 'get_last_ten_expenses_title_bloc.dart';

@freezed
class GetLastTenExpensesTitleState with _$GetLastTenExpensesTitleState {
  const factory GetLastTenExpensesTitleState.commonState({required CommonState commonState}) = _CommonState;

  const factory GetLastTenExpensesTitleState.expensesTitleLoaded(List<Title> expenses) = _ExpensesTitleLoaded;
}
