import 'package:expenses_tracker_ddd/application/core/use_case.dart';
import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/domain/expense/i_expense_repository.dart';

class GetLastTenExpensesTitleUseCase extends UseCase<List<Title>, void> {
  GetLastTenExpensesTitleUseCase(this._repo);

  final IExpenseRepository _repo;

  @override
  EitherFailureOrSuccess<List<Title>> call(void params) async {
    return _repo.getLastTenExpensesTitle();
  }
}
