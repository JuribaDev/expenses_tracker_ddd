import 'package:expenses_tracker_ddd/application/core/use_case.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';

class WatchLastMonthExpensesUseCase extends UseCase<Stream<List<ExpenseDTO>>, void> {
  WatchLastMonthExpensesUseCase(this._repo);

  final IExpenseRepository _repo;

  @override
  EitherFailureOrSuccess<Stream<List<ExpenseDTO>>> call(void params) async {
    final result = await _repo.watchLastMonthExpenses();

    return Right(ExpenseDTO.fromStreamOfEntity(result.right));
  }
}
