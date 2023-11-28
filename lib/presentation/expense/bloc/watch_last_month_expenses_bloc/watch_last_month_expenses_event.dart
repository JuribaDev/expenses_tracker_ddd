part of 'watch_last_month_expenses_bloc.dart';

@freezed
class WatchLastMonthExpensesEvent with _$WatchLastMonthExpensesEvent {
  const factory WatchLastMonthExpensesEvent.getLastMonthExpenses() = _GetLastMonthExpenses;
}
