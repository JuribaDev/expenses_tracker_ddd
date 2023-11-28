import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/date.dart';

ExpenseEntity expenseEntityMockRes = ExpenseEntity.create(
  1,
  'Groceries',
  '100',
  DateTime.now(),
).right;

ExpenseDto expenseDTOMockReq = ExpenseDto(
  id: 1,
  title: 'Groceries',
  amount: '100',
  date: DateTime.now(),
);

ExpenseEntity expenseEntityMockReq = ExpenseEntity(
  null,
  const Title('Groceries'),
  const Amount(100),
  Date(DateTime.now()),
);
