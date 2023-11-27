import 'package:expenses_tracker_ddd/application/core/use_case.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/entity/expense_entity.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';

class AddExpenseUseCase extends UseCase<String, ExpenseDTO> {
  AddExpenseUseCase(this._repo);

  final IExpenseRepository _repo;

  @override
  EitherFailureOrSuccess<String> call(ExpenseDTO params) async {
    final validatedExpense = ExpenseEntity.create(params.id, params.title, params.amount, params.date);
    if (validatedExpense.isLeft) {
      return Left(Failure(message: validatedExpense.left.message));
    }
    return _repo.addExpense(validatedExpense.right);
  }
}
