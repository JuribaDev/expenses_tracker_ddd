import 'package:expenses_tracker_ddd/application/core/use_case.dart';
import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';

class DeleteExpenseUseCase extends UseCase<String, int> {
  DeleteExpenseUseCase(this._repo);

  final IExpenseRepository _repo;

  @override
  EitherFailureOrSuccess<String> call(int params) async {
    return _repo.deleteExpense(params);
  }
}
