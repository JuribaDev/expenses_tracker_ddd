import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/error_handling/user_viewable_exception.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/entity/expense_entity.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/title.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/local_data_source/drift_local_data_source.dart';

class ExpenseLocalRepositoryImpl implements IExpenseRepository {
  ExpenseLocalRepositoryImpl(this.localDataSource);

  final DriftLocalDataSource localDataSource;

  @override
  EitherFailureOrSuccess<String> addExpense(ExpenseEntity expense) async {
    try {
      final result = await localDataSource.addExpense(expense);
      return Right(result);
    } on UserViewableException catch (e) {
      return Left(Failure(message: e.message!));
    }
  }

  @override
  EitherFailureOrSuccess<List<Title>> getRecentExpensesTitle() async {
    try {
      final result = await localDataSource.getRecentExpensesTitle();
      return Right(result);
    } on UserViewableException catch (e) {
      return Left(Failure(message: e.message!));
    }
  }

  @override
  EitherFailureOrSuccess<Stream<List<ExpenseEntity>>> watchLastMonthExpenses() async {
    try {
      final result = localDataSource.watchLastMonthExpenses();
      return Right(result);
    } on UserViewableException catch (e) {
      return Left(Failure(message: e.message!));
    }
  }

  @override
  EitherFailureOrSuccess<String> deleteExpense(int expenseId) async {
    try {
      final result = await localDataSource.deleteExpense(expenseId);
      return Right(result);
    } on UserViewableException catch (e) {
      return Left(Failure(message: e.message!));
    }
  }

  @override
  EitherFailureOrSuccess<List<ExpenseEntity>> getExpenses() async {
    try {
      final result = await localDataSource.getExpenses();
      return Right(result);
    } on UserViewableException catch (e) {
      return Left(Failure(message: e.message!));
    }
  }

  @override
  EitherFailureOrSuccess<String> updateExpense(ExpenseEntity expense) async {
    try {
      final result = await localDataSource.updateExpense(expense);
      return Right(result);
    } on UserViewableException catch (e) {
      return Left(Failure(message: e.message!));
    }
  }
}
