import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExpenseEntity', () {
    test('Should return a ValidationException when either title or amount is invalid', () {
      final result = ExpenseEntity.create(123, '', '100', DateTime.now());
      expect(result.isLeft, true);
      expect(result.left.message, 'Invalid expense data');
    });

    test('Should create an ExpenseEntity when title and amount are valid', () {
      final result = ExpenseEntity.create(12, 'Groceries', '100', DateTime.now());
      expect(result.isRight, true);
      expect(result.right, isA<ExpenseEntity>());
      expect(result.right.title.value, 'Groceries');
      expect(result.right.props, containsAll([result.right.title, result.right.amount]));
    });
  });
}
