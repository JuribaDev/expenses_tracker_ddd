part of 'watch_last_month_expenses_bloc.dart';

@freezed
class WatchLastMonthExpensesState with _$WatchLastMonthExpensesState {
  const factory WatchLastMonthExpensesState.commonState({required CommonState commonState}) = _CommonState;

  const factory WatchLastMonthExpensesState.loaded(Stream<List<ExpenseDto>> stream) = _Loaded;
}
