import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';

abstract class IExpenseRepository {
  EitherFailureOrSuccess<ExpenseEntity> addExpense(ExpenseEntity expense);

  EitherFailureOrSuccess<List<ExpenseEntity>> getExpenses();

  Stream<EitherFailureOrSuccess<List<ExpenseEntity>>> watchLastMonthExpenses();

  EitherFailureOrSuccess<List<Title>> getRecentExpensesTitle();

  EitherFailureOrSuccess<ExpenseEntity> updateExpense(ExpenseEntity expense);

  EitherFailureOrSuccess<String> deleteExpense(String expenseId);
}
