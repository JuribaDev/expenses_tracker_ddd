// ignore_for_file: inference_failure_on_untyped_parameter

import 'package:drift/drift.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/drift_local_source_manager.dart';
import 'package:expenses_tracker_ddd/core/error_handling/parse_exceptions.dart';
import 'package:expenses_tracker_ddd/core/error_handling/user_viewable_exception.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/date.dart';
import 'package:logger/logger.dart';

class DriftLocalDataSource {
  DriftLocalDataSource(this.localDatabaseManager, this.logger);

  final DriftLocalDatabaseManager localDatabaseManager;
  final Logger logger;

  Future<String> addExpense(ExpenseEntity expense) async {
    try {
      await localDatabaseManager.into(localDatabaseManager.expensesTable).insert(
            ExpensesTableCompanion(
              title: Value(expense.title.value),
              amount: Value(expense.amount.value),
              date: Value(expense.date.value),
            ),
          );
      logger.i('Expense added successfully');
      return 'Expense added successfully';
    } catch (e, stacktrace) {
      logger.e('Expense adding failed. error:$e \n stack track: $stacktrace');
      throw parseExceptions(UserViewableException(message: 'Expense adding failed.'), logger);
    }
  }

  Future<List<Title>> getRecentExpensesTitle() async {
    try {
      const sql = 'SELECT title FROM expenses_table ORDER BY date DESC LIMIT 10';
      final result = await localDatabaseManager.customSelect(sql).get();

      logger.i('Recent expenses retrieved successfully');
      return result.map((row) {
        return Title(row.read<String>('title'));
      }).toList();
    } catch (e, stacktrace) {
      logger.e('Recent expenses title retrieval failed. error:$e \n stack track: $stacktrace');
      throw parseExceptions(UserViewableException(message: 'Recent title retrieval failed.'), logger);
    }
  }

  Future<String> deleteExpense(int id) async {
    try {
      await localDatabaseManager
          .delete(localDatabaseManager.expensesTable)
          .delete(ExpensesTableCompanion(id: Value(id)));
      logger.i('Expense deleted successfully');
      return 'Expense deleted successfully';
    } catch (e, stacktrace) {
      logger.e('Expense deletion failed. error:$e \n stack track: $stacktrace');
      throw parseExceptions(UserViewableException(message: 'Expense deletion failed.'), logger);
    }
  }

  Future<String> updateExpense(ExpenseEntity expense) async {
    try {
      await localDatabaseManager.update(localDatabaseManager.expensesTable).replace(
            ExpensesTableCompanion(
              id: Value(expense.id!),
              title: Value(expense.title.value),
              amount: Value(expense.amount.value),
              date: Value(expense.date.value),
            ),
          );
      logger.i('Expense updated successfully');
      return 'Expense updated successfully';
    } catch (e, stacktrace) {
      logger.e('Expense update failed. error:$e \n stack track: $stacktrace');
      throw parseExceptions(UserViewableException(message: 'Expense update failed.'), logger);
    }
  }

  Stream<List<ExpenseEntity>> watchLastMonthExpenses() {
    final oneMonthAgo = DateTime.now().subtract(const Duration(days: 30));

    return localDatabaseManager
        .select(localDatabaseManager.expensesTable)
        .watch()
        .map(
          (event) => event
              .where((element) => element.date.isAfter(oneMonthAgo))
              .map(
                (e) => ExpenseEntity(
                  e.id,
                  Title(e.title),
                  Amount(e.amount),
                  Date(e.date),
                ),
              )
              .toList(),
        )
        .handleError((e, stacktrace) {
      logger.e('Expense watch failed. error:$e \n stack track: $stacktrace');
    });
  }

  Future<List<ExpenseEntity>> getExpenses() async {
    try {
      const sql = 'SELECT * FROM expenses_table ORDER BY date DESC';
      final result = await localDatabaseManager.customSelect(sql).get();
      logger.i('Expenses retrieved successfully');
      return result.map((row) {
        return ExpenseEntity(
          row.read<int>('id'),
          Title(row.read<String>('title')),
          Amount(row.read<double>('amount')),
          Date(row.read<DateTime>('date')),
        );
      }).toList();
    } catch (e, stacktrace) {
      logger.e('Expenses retrieval failed. error:$e \n stack track: $stacktrace');
      throw parseExceptions(UserViewableException(message: 'Expenses retrieval failed.'), logger);
    }
  }
}
