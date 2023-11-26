import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';

abstract class IExpenseRepository {
  EitherFailureOrSuccess<String> addExpense(ExpenseEntity expense);

  EitherFailureOrSuccess<List<ExpenseEntity>> getExpenses();

  EitherFailureOrSuccess<Stream<List<ExpenseEntity>>> watchLastMonthExpenses();

  EitherFailureOrSuccess<List<Title>> getRecentExpensesTitle();

  EitherFailureOrSuccess<String> updateExpense(ExpenseEntity expense);

  EitherFailureOrSuccess<String> deleteExpense(int expenseId);
}
