import 'package:expenses_tracker_ddd/application/core/use_case.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';

class ViewExpensesUseCase extends UseCase<List<ExpenseDTO>, void> {
  ViewExpensesUseCase(this._repo);

  final IExpenseRepository _repo;

  @override
  EitherFailureOrSuccess<List<ExpenseDTO>> call(void params) async {
    final expenses = await _repo.getExpenses();
    if (expenses.isLeft) {
      return Left(Failure(message: expenses.left.message));
    }
    final expensesModel = ExpenseDTO.fromListEntity(expenses.right);
    return Right(expensesModel);
  }
}
