part of 'get_expenses_bloc.dart';

@freezed
class GetExpensesEvent with _$GetExpensesEvent {
  const factory GetExpensesEvent.getExpenses() = _GetExpenses;
}
