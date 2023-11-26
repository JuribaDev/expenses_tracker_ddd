import 'package:expenses_tracker_ddd/domain/expense/value_object/date.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Date', () {
    test('Should return a ValidationException when the date is in the future', () {
      final futureDate = DateTime.now().add(const Duration(days: 1));
      final result = Date.create(futureDate);
      expect(result.isLeft, true);
      expect(result.left.message, 'Expense date can not be in the future.');
    });

    test('Should create a Date when the value is valid (not in the future)', () {
      final validDate = DateTime.now().subtract(const Duration(days: 1));
      final result = Date.create(validDate);
      expect(result.isRight, true);
      expect(result.right, isA<Date>());
      expect(result.right.value, validDate);
      expect(result.right.props, containsAll([result.right.value]));
    });
  });
}
