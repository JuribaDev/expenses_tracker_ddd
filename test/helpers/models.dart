import 'package:expenses_tracker_ddd/domain/expense/entity/expense_entity.dart';

ExpenseEntity expenseEntityMock = ExpenseEntity.create(
  1,
  'Groceries',
  '100',
  DateTime.now(),
).right;
